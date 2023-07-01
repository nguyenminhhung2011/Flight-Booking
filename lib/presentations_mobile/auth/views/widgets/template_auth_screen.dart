import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/widgets/extension/color_extension.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/const/image_const.dart';
import '../../../../core/components/widgets/mobile/appbar.dart';
import '../../../../core/components/widgets/mobile/button_custom.dart';
import '../../../../core/components/widgets/mobile/custom_template_screen_stack_scroll.dart';
import '../../../../core/components/widgets/mobile/text_field_custom.dart';
import '../../../../generated/l10n.dart';
import '../../../routes_mobile.dart';
import '../../../splash_mobile/views/widgets/app_name.dart';

const _hMargin = 20.0;

class TemplateAuthScreen extends StatefulWidget {
  final TextEditingController? emailController;
  final TextEditingController? passwordController;
  final TextEditingController? rePasswordController;
  final Function()? signInCall;
  final Function()? registerCall;
  final bool isSignUpForm;
  final bool loading;
  const TemplateAuthScreen({
    super.key,
    this.loading = false,
    this.isSignUpForm = false,
    this.emailController,
    this.passwordController,
    this.rePasswordController,
    this.signInCall,
    this.registerCall,
  });

  @override
  State<TemplateAuthScreen> createState() => _TemplateAuthScreenState();
}

class _TemplateAuthScreenState extends State<TemplateAuthScreen> {
  String get headerText => widget.isSignUpForm
      ? S.of(context).registerNewAccount
      : S.of(context).signIn;

  String get buttonText =>
      widget.isSignUpForm ? S.of(context).signUp : S.of(context).signIn;

  String get orText => widget.isSignUpForm
      ? S.of(context).orSignUpWith
      : S.of(context).orSignInWith;
  String get textButtonText =>
      widget.isSignUpForm ? S.of(context).signIn : S.of(context).signUp;

  void changeForm() {
    if (widget.isSignUpForm) {
      context.pop();
    } else {
      context.openListPageWithRoute(RoutesMobile.register);
    }
  }

  @override
  Widget build(BuildContext context) {
    final heightDevice = context.heightDevice;
    var headerStyle = context.titleMedium.copyWith(
      fontWeight: FontWeight.w600,
      color: Colors.grey,
    );
    var textStyle = context.titleMedium.copyWith(
      fontWeight: FontWeight.w400,
    );
    return CustomTemplateScreenStackScroll(
      appbar: AppbarCustom(
        backgroundColor: Theme.of(context).primaryColor,
        expandedHeight: heightDevice * 0.2,
        titleExpand: SizedBox(
          width: double.infinity,
          height: heightDevice * 0.07,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: heightDevice * 0.035,
                  // alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(20.0),
                    ),
                    color: Theme.of(context).scaffoldBackgroundColor,
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).primaryColor,
                        blurRadius: 100.0,
                        offset: const Offset(0, -10),
                      ),
                      BoxShadow(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        blurRadius: 10.0,
                        offset: const Offset(0, 10),
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: heightDevice * 0.07,
                  height: heightDevice * 0.07,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).cardColor,
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).shadowColor.withOpacity(0.2),
                      )
                    ],
                  ),
                  child: const Center(
                    child: AppName(fontSize: 10),
                  ),
                ),
              )
            ],
          ),
        ),
        title: [
          IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(Icons.arrow_back),
          ),
          const Spacer(),
          Text(
            headerText,
            style: context.titleMedium.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context)
                  .scaffoldBackgroundColor
                  .fontColorByBackgroundSecond,
            ),
          ),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const SizedBox())
        ],
      ),
      children: [
        SliverList(
          delegate: SliverChildListDelegate(
            <Widget>[
              const SizedBox(height: 20.0),
              TextFieldCustom(
                type: TextFieldType.backgroundShadow,
                paddingLeft: _hMargin,
                paddingRight: _hMargin,
                headerText: S.of(context).email,
                headerTextStyle: headerStyle,
                hintStyle: context.titleMedium,
                hintText: S.of(context).enterYourEmail,
                spacingText: 10.0,
                controller: widget.emailController,
                prefix: const Icon(Icons.email_outlined),
                textStyle: textStyle,
              ),
              const SizedBox(height: 5.0),
              TextFieldCustom(
                type: TextFieldType.backgroundShadow,
                paddingLeft: _hMargin,
                isPasswordField: true,
                paddingRight: _hMargin,
                headerText: S.of(context).password,
                headerTextStyle: headerStyle,
                hintStyle: context.titleMedium,
                hintText: S.of(context).enterYourPassword,
                spacingText: 10.0,
                controller: widget.passwordController,
                prefix: const Icon(Icons.lock_outline),
                textStyle: textStyle,
              ),
              if (widget.isSignUpForm) ...[
                const SizedBox(height: 5.0),
                TextFieldCustom(
                  type: TextFieldType.backgroundShadow,
                  paddingLeft: _hMargin,
                  isPasswordField: true,
                  paddingRight: _hMargin,
                  headerText: S.of(context).rePassword,
                  headerTextStyle: headerStyle,
                  hintStyle: context.titleMedium,
                  hintText: S.of(context).enterRePassword,
                  spacingText: 10.0,
                  controller: widget.rePasswordController,
                  prefix: const Icon(Icons.lock_outline),
                  textStyle: textStyle,
                ),
              ],
              const SizedBox(height: 5.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: _hMargin),
                child: SizedBox(
                  height: 50.0,
                  child: ButtonCustom(
                      loading: widget.loading,
                      child: Text(
                        buttonText,
                        style: context.titleMedium.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      onPress: () {
                        if (widget.isSignUpForm) {
                        } else {
                          widget.signInCall?.call();
                        }
                      }),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(S.of(context).donHaveAnAccount,
                      style: context.titleSmall.copyWith(color: Colors.grey)),
                  TextButton(
                    onPressed: changeForm,
                    child: Text(
                      textButtonText,
                      style: context.titleSmall.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10.0),
              Text(
                orText,
                textAlign: TextAlign.center,
                style: context.titleSmall.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              Row(
                children: [
                  for (int i = 0; i < 2; i++)
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: i == 0 ? _hMargin : 5.0,
                          right: i == 0 ? 5.0 : _hMargin,
                        ),
                        child: SizedBox(
                          height: 45.0,
                          child: ButtonCustom(
                            color: i == 0
                                ? Theme.of(context).cardColor
                                : Colors.blue,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (i == 0)
                                  Image.asset(ImageConst.googleIcon,
                                      height: 30.0, width: 30.0),
                                if (i == 1)
                                  const Icon(Icons.facebook, size: 30.0),
                                Text(
                                  ' ${i == 0 ? S.of(context).google : S.of(context).facebook}',
                                  style: context.titleSmall.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: i == 1 ? Colors.white : null,
                                  ),
                                )
                              ],
                            ),
                            onPress: () {},
                          ),
                        ),
                      ),
                    )
                ],
              ),
            ]
                .expand((element) => [
                      element,
                      const SizedBox(height: 10.0),
                    ])
                .toList(),
          ),
        )
      ],
    );
  }
}
