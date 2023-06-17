import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/presentations_mobile/auth/bloc/auth_bloc.dart';
import 'package:flight_booking/presentations_mobile/auth/views/widgets/template_auth_screen.dart';
import 'package:flight_booking/presentations_mobile/routes_mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginMobileScreen extends StatefulWidget {
  const LoginMobileScreen({super.key});

  @override
  State<LoginMobileScreen> createState() => _LoginMobileScreenState();
}

class _LoginMobileScreenState extends State<LoginMobileScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  AuthBloc get _bloc => BlocProvider.of<AuthBloc>(context);

  @override
  void initState() {
    _bloc.add(const AuthEvent.onStarted());
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    _bloc.add(AuthEvent.login(
      email: _emailController.text,
      password: _passwordController.text,
    ));
  }

  void _listenStateChange(BuildContext context, AuthState state) {
    state.maybeWhen(
      loginSuccess: (data) {
        context.pushAndRemoveAll(RoutesMobile.dashboardMobile);
      },
      loginFailed: (data, message) {
        // show error
      },
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      builder: (context, state) => TemplateAuthScreen(
        signInCall: _login,
        emailController: _emailController,
        passwordController: _passwordController,
      ),
      listener: _listenStateChange,
    );
  }
}
