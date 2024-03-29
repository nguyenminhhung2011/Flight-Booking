import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/const/image_const.dart';
import 'package:flight_booking/core/components/utils/preferences.dart';
import 'package:flight_booking/core/components/widgets/loading_indicator.dart';
import 'package:flight_booking/presentations/login/bloc/authentication_bloc.dart';
import 'package:flight_booking/presentations/login/views/widgets/forget_password_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/config/common_ui_config.dart';
import '../../../generated/l10n.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final pageController = PageController();

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _stateChangeListener(
      BuildContext context, AuthenticationState state) async {
    if (state.status == AuthenticationStatus.authenticated) {
      await context.openDashboardPage();
    } else if (state.status == AuthenticationStatus.unauthenticated &&
        state.message.isNotEmpty) {
      await context.showFailedDialog(
        width: 400,
        header: "Authentication Failed",
        title: state.message,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
        listener: _stateChangeListener,
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            body: Container(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.25,
                vertical: MediaQuery.of(context).size.height * 0.15,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    Theme.of(context).brightness == Brightness.light
                        ? ImageConst.loginBackground
                        : ImageConst.loginBackgroundDark,
                  ),
                ),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                  vertical: MediaQuery.of(context).size.height * 0.05,
                ),
                // width: loginFormWidth,
                // height: loginFormHeight,
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: PageView(
                  controller: pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    LoginForm(
                      passwordController: passwordController,
                      usernameController: usernameController,
                      authenticationState: state,
                      navigateToForgetPassword: () async {
                        await pageController.nextPage(
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.bounceIn,
                        );
                      },
                    ),
                    ForgetPasswordForm(
                      comebackToLoginForm: () async {
                        await pageController.previousPage(
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.bounceIn,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

class LoginForm extends StatelessWidget {
  LoginForm({
    super.key,
    required this.navigateToForgetPassword,
    required this.authenticationState,
    required this.usernameController,
    required this.passwordController,
  });

  // final double loginFormWidth;
  final ValueNotifier<bool> isLoading = ValueNotifier(false);
  final ValueNotifier<bool> isObscureText = ValueNotifier(true);
  final ValueNotifier<bool> isRememberInfo = ValueNotifier(false);
  final Function() navigateToForgetPassword;
  final AuthenticationState authenticationState;
  final _formKey = GlobalKey<FormState>();

  final TextEditingController usernameController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Flight Booking",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(
            S.of(context).pleaseLogin,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your username";
              }
              return null;
            },
            controller: usernameController,
            maxLines: 1,
            decoration: InputDecoration(
              suffixIcon: const Icon(Icons.email_outlined),
              hintText: S.of(context).enterYourEmail,
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Theme.of(context).hintColor),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              labelText: S.of(context).email,
              labelStyle: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Theme.of(context).hintColor),
              enabledBorder: OutlineInputBorder(
                borderRadius: CommonAppUIConfig.primaryRadiusBorder,
                borderSide: const BorderSide(color: Colors.grey),
              ),
              border: OutlineInputBorder(
                borderRadius: CommonAppUIConfig.primaryRadiusBorder,
                borderSide: const BorderSide(color: Colors.grey),
              ),
            ),
          ),
          ValueListenableBuilder<bool>(
            valueListenable: isObscureText,
            builder: (context, isObscure, child) => TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your password";
                }
                return null;
              },
              controller: passwordController,
              obscureText: isObscure,
              maxLines: 1,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    isObscureText.value = !isObscureText.value;
                  },
                  icon: Icon(
                    isObscure ? Icons.panorama_fish_eye : Icons.hide_source,
                  ),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                hintText: S.of(context).enterYourEmail,
                hintStyle: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).hintColor),
                labelText: S.of(context).password,
                labelStyle: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).hintColor),
                enabledBorder: OutlineInputBorder(
                  borderRadius: CommonAppUIConfig.primaryRadiusBorder,
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                border: OutlineInputBorder(
                  borderRadius: CommonAppUIConfig.primaryRadiusBorder,
                  borderSide: const BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ValueListenableBuilder<bool>(
                valueListenable: isRememberInfo,
                builder: (context, isCheck, child) => Checkbox(
                  fillColor: MaterialStateColor.resolveWith(
                      (states) => isCheck ? Colors.blue : Colors.grey),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  value: isCheck,
                  onChanged: (value) {
                    isRememberInfo.value = value ?? false;
                  },
                ),
              ),
              Text(
                S.of(context).rememberInformation,
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          TextButton(
            onPressed: navigateToForgetPassword,
            child: Text(
              S.of(context).forgotPassword,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: TextButton.icon(
              onPressed:
                  authenticationState.status == AuthenticationStatus.checking
                      ? () {}
                      : () {
                          if (_formKey.currentState?.validate() ?? false) {
                            context.read<AuthenticationBloc>().add(LoginEvent(
                                username: usernameController.text,
                                password: passwordController.text));
                          }
                        },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                backgroundColor: Theme.of(context).primaryColor,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: CommonAppUIConfig.primaryRadiusBorder,
                ),
              ),
              label: Text(
                S.of(context).logIn,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              icon: authenticationState.status == AuthenticationStatus.checking
                  ? LoadingIndicator(
                      color: Theme.of(context).colorScheme.onPrimary,
                      radius: 10,
                      strokeWidth: 1,
                    )
                  : Icon(
                      Icons.login,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
            ),
          ),
          Wrap(
            runSpacing: 5,
            children: [
              Text(
                S.of(context).donHaveAnAccount,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                S.of(context).pleaseContact,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
