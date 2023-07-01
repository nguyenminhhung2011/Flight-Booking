import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/presentations_mobile/auth/views/widgets/template_auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../presentations/login/bloc/authentication_bloc.dart';

class LoginMobileScreen extends StatefulWidget {
  const LoginMobileScreen({super.key});

  @override
  State<LoginMobileScreen> createState() => _LoginMobileScreenState();
}

class _LoginMobileScreenState extends State<LoginMobileScreen> {
  final TextEditingController _emailController =
      TextEditingController(text: 'hoang2');
  final TextEditingController _passwordController =
      TextEditingController(text: '1234');
  final ValueNotifier<bool> _loading = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    _loading.value = true;
    context.read<AuthenticationBloc>().add(LoginEvent(
        username: _emailController.text, password: _passwordController.text));
  }

  void _register() {
    _loading.value = true;
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) => ValueListenableBuilder<bool>(
        valueListenable: _loading,
        builder: (context, loading, child) {
          return TemplateAuthScreen(
            signInCall: _login,
            registerCall: _register,
            emailController: _emailController,
            passwordController: _passwordController,
            loading: loading,
          );
        },
      ),
      listener: (_, state) async {
        if (state.status == AuthenticationStatus.authenticated) {
          await context.openDashboardMobilePage();
        }
      },
    );
  }
}
