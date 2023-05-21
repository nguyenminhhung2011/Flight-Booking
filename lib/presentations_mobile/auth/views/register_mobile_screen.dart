import 'package:flight_booking/presentations_mobile/auth/views/widgets/template_auth_screen.dart';
import 'package:flutter/material.dart';

class RegisterMobileScreen extends StatefulWidget {
  const RegisterMobileScreen({super.key});

  @override
  State<RegisterMobileScreen> createState() => _RegisterMobileScreenState();
}

class _RegisterMobileScreenState extends State<RegisterMobileScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _rePasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TemplateAuthScreen(
      registerCall: () {},
      emailController: _emailController,
      passwordController: _passwordController,
      rePasswordController: _rePasswordController,
      isSignUpForm: true,
    );
  }
}
