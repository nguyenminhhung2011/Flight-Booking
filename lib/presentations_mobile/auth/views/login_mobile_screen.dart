import 'package:flight_booking/presentations_mobile/auth/views/widgets/template_auth_screen.dart';
import 'package:flutter/material.dart';

class LoginMobileScreen extends StatefulWidget {
  const LoginMobileScreen({super.key});

  @override
  State<LoginMobileScreen> createState() => _LoginMobileScreenState();
}

class _LoginMobileScreenState extends State<LoginMobileScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TemplateAuthScreen(
      signInCall: () {},
      emailController: _emailController,
      passwordController: _passwordController,
    );
  }
}
