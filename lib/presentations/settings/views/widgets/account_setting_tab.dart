import 'package:flight_booking/core/components/widgets/loading_indicator.dart';
import 'package:flight_booking/core/config/common_ui_config.dart';
import 'package:flight_booking/presentations/settings/bloc/accout/account_setting_bloc.dart';
import 'package:flight_booking/presentations/settings/views/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../generated/l10n.dart';

// ignore: must_be_immutable
class AccountSettingTab extends StatefulWidget {
  const AccountSettingTab({super.key});

  @override
  State<AccountSettingTab> createState() => _AccountSettingTabState();
}

class _AccountSettingTabState extends State<AccountSettingTab> {
  AccountSettingBloc get _accountSettingBloc =>
      BlocProvider.of<AccountSettingBloc>(context);
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _password = TextEditingController();
  final TextEditingController _newPassword = TextEditingController();
  final TextEditingController _retypePassword = TextEditingController();

  @override
  void initState() {
    _accountSettingBloc.add(const AccountSettingEvent.onStarted());
    _accountSettingBloc.add(const AccountSettingEvent.fetchUserData());
    super.initState();
  }

  void _stateChangeListener(BuildContext context, AccountSettingState state) {
    state.whenOrNull(
      initial: (data) {},
      loading: (data) {},
      fetchUserDataFailed: (data) {},
      fetchUserDataSuccess: (data) {},
      updateUserDataFailed: (data) {},
      updateUserDataSuccess: (data) {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AccountSettingBloc, AccountSettingState>(
      listener: _stateChangeListener,
      builder: (context, state) => Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 0.2),
          borderRadius: CommonAppUIConfig.primaryRadiusBorder,
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return state.isLoading
                ? const LoadingIndicator()
                : SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: Image.asset(
                              'assets/images/password-manager.png',
                              filterQuality: FilterQuality.high,
                              height: 50,
                              width: 50,
                              fit: BoxFit.contain,
                            ),
                            title: Text(S.of(context).passwordSettings,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(height: 30),
                          Text(
                            S.of(context).currentPassword,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          CustomerTextField(
                            controller: _password,
                            isDense: true,
                            isPasswordField: true,
                            hint: S.of(context).enterCurrentPassword,
                            trailingIcon: Icon(
                              Icons.remove_red_eye_outlined,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Text(
                            S.of(context).newPassword,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          CustomerTextField(
                            controller: _newPassword,
                            isDense: true,
                            isPasswordField: true,
                            hint: S.of(context).enterNewPassword,
                            trailingIcon: Icon(
                              Icons.remove_red_eye_outlined,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Text(
                            S.of(context).retypePassword,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          CustomerTextField(
                            controller: _retypePassword,
                            isDense: true,
                            isPasswordField: true,
                            hint: S.of(context).retypePassword,
                            trailingIcon: Icon(
                              Icons.remove_red_eye_outlined,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState?.validate() ??
                                    false) {
                                  _accountSettingBloc.add(
                                    AccountSettingEvent.updateUserData(
                                      newPassword: _newPassword.text,
                                      password: _password.text,
                                      retypePassword: _retypePassword.text,
                                    ),
                                  );
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: CommonAppUIConfig
                                          .primaryRadiusBorder),
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width * 0.5,
                                      50),
                                  backgroundColor:
                                      Theme.of(context).primaryColor),
                              child: Text(
                                S.of(context).changePassword,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
          },
        ),
      ),
    );
  }
}
