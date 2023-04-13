import 'package:flight_booking/presentations/login/views/widgets/forget_password_form.dart';
import 'package:flight_booking/presentations/routes/routes.dart';
import 'package:flutter/material.dart';
import '../../../core/components/widgets/custom_dialog_error/error_dialog.dart';
import '../../../core/config/color_config.dart';
import '../../../core/config/common_ui_config.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final loginFormWidth = MediaQuery.of(context).size.width * 0.4;
    final loginFormHeight = MediaQuery.of(context).size.height * 0.55;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("images/vecteezy_airplane.jpg"),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          width: loginFormWidth,
          height: loginFormHeight,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: PageView(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              LoginForm(
                loginFormWidth: loginFormWidth,
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
  }
}

class LoginForm extends StatelessWidget {
  LoginForm({
    super.key,
    required this.loginFormWidth,
    required this.navigateToForgetPassword,
  });

  final double loginFormWidth;
  final ValueNotifier<bool> isLoading = ValueNotifier(false);
  final ValueNotifier<bool> isObscureText = ValueNotifier(true);
  final ValueNotifier<bool> isRememberInfo = ValueNotifier(false);
  final Function() navigateToForgetPassword;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Login',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const Text(
            'Please login to use our service',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 17,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: CommonAppUIConfig.primaryRadiusBorder,
                ),
                backgroundColor: Colors.white,
                foregroundColor: Colors.blue,
                fixedSize: Size(loginFormWidth * 0.7, 50),
                side: const BorderSide(color: Colors.blueGrey, width: 0.4),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const ErrorDialog(
                    question: "Warning",
                    title1: 'The Service have not finished yet !!!',
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(
                    image: AssetImage('assets/icons/google.jpg'),
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Login with Google',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Divider(
                    color: Colors.grey[350], thickness: 1.5, endIndent: 5),
              ),
              const Text(
                'OR',
                style: TextStyle(color: Colors.grey),
              ),
              Expanded(
                child: Divider(
                  indent: 5,
                  color: Colors.grey[350],
                  thickness: 1.5,
                ),
              ),
            ],
          ),
          TextFormField(
            maxLines: 1,
            decoration: InputDecoration(
              suffixIcon: const Icon(Icons.email_outlined),
              hintText: "Enter your Email",
              hintStyle: const TextStyle(
                  fontSize: 12.5,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              labelText: 'Email',
              labelStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 12.5,
                fontWeight: FontWeight.w500,
              ),
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
                hintText: 'Enter your Password',
                hintStyle: const TextStyle(
                    fontSize: 12.5,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
                labelText: 'Password',
                labelStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12.5,
                  fontWeight: FontWeight.w500,
                ),
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
              const Text(
                'Remember Information',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: navigateToForgetPassword,
                child: const Text(
                  "Forgot Password",
                  style: TextStyle(
                    color: CommonColor.primaryColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.dashboard);
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(loginFormWidth * 0.7, 50),
                backgroundColor: CommonColor.primaryColor,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: CommonAppUIConfig.primaryRadiusBorder,
                ),
              ),
              child: ValueListenableBuilder(
                valueListenable: isLoading,
                builder: (context, isLoadingValue, child) =>
                    !(isLoadingValue as bool)
                        ? const Text(
                            "Log In",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        : const Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          ),
              ),
            ),
          ),
          Row(
            children: const [
              Text(
                'Don\'t have an account ? ',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              Expanded(
                child: Text(
                  'Please ! Contact Administrator to be provided Account!',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
