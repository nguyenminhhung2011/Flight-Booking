import 'package:flight_booking/core/components/utils/preferences.dart';
import 'package:flight_booking/core/components/widgets/loading_indicator.dart';
import 'package:flight_booking/core/config/common_ui_config.dart';
import 'package:flight_booking/core/dependency_injection/di.dart';
import 'package:flight_booking/generated/l10n.dart';
import 'package:flight_booking/presentations/login/bloc/authentication_bloc.dart';
import 'package:flight_booking/presentations/settings/bloc/accout/account_setting_bloc.dart';
import 'package:flight_booking/presentations/settings/bloc/general/general_setting_bloc.dart';
import 'package:flight_booking/presentations/settings/bloc/setting_bloc.dart';
import 'package:flight_booking/presentations/settings/views/widgets/account_setting_tab.dart';
import 'package:flight_booking/presentations/settings/views/widgets/add_new_employee.dart';
import 'package:flight_booking/presentations/settings/views/widgets/general_setting_tab.dart';
import 'package:flight_booking/presentations/settings/views/widgets/principle_setting_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  SettingBloc get _settingBloc => BlocProvider.of<SettingBloc>(context);

  final String role = CommonAppSettingPref.getUserRole();

  late final List<Map<String, dynamic>> navigatorBarData = [
    {
      "label": S.of(context).generalSetting,
      "icon": Icons.person,
    },
    {
      "label": S.of(context).accountSetting,
      "icon": Icons.password,
    },
    if (role == "ADMIN")
      {
        "label": "Add New Employee",
        "icon": Icons.add_box,
      },
  ];

  final PageController pageController =
      PageController(initialPage: 0, keepPage: true);

  late final List<Widget> pages = [
    const GeneralSettingsTab(),
    const AccountSettingTab(),
    if (role == "ADMIN") const AddNewEmployee(),
  ];

  @override
  void initState() {
    _settingBloc.add(const SettingEvent.started());
    super.initState();
  }

  int _currentIndex = 0;

  void _stateChangeListener(BuildContext context, SettingState state) {
    state.whenOrNull(
      initial: (data) {},
      switchTab: (data) {
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          setState(() {
            _currentIndex = data.currentPage;
          });
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final widthDevice = MediaQuery.of(context).size.width;
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, authenticationState) {
        return BlocListener<SettingBloc, SettingState>(
          listener: _stateChangeListener,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Scaffold(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              appBar: AppBar(
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                elevation: 0,
                title: Text(
                  S.of(context).setting,
                  maxLines: 1,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                actions: [
                  TextButton.icon(
                    onPressed: () {
                      context.read<AuthenticationBloc>().add(LogoutEvent());
                    },
                    icon: authenticationState.status ==
                            AuthenticationStatus.checking
                        ? Center(
                            child: LoadingIndicator(
                              color: Theme.of(context).colorScheme.error,
                              radius: 10,
                              strokeWidth: 1.5,
                            ),
                          )
                        : Icon(
                            Icons.logout,
                            color: Theme.of(context).colorScheme.error,
                            size: 25,
                          ),
                    label: Text(
                      "Logout",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Theme.of(context).colorScheme.error,
                          ),
                    ),
                  )
                ],
              ),
              body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: widthDevice * 0.1,
                  ),
                  child: Column(
                    children: [
                      BlocBuilder<SettingBloc, SettingState>(
                        buildWhen: (previous, current) => current.when<bool>(
                          initial: (data) => false,
                          switchTab: (data) => true,
                        ),
                        builder: (context, state) => NavigationBar(
                          height: 50,
                          backgroundColor:
                              Theme.of(context).scaffoldBackgroundColor,
                          destinations: navigatorBarData
                              .map(
                                (destination) => NavigationDestination(
                                  icon: Icon(destination["icon"]),
                                  label: destination['label'],
                                ),
                              )
                              .toList(),
                          selectedIndex: state.data.currentPage,
                          onDestinationSelected: (value) =>
                              _settingBloc.add(SettingEvent.changePage(value)),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: Theme.of(context).dividerColor),
                            borderRadius: CommonAppUIConfig.primaryRadiusBorder,
                          ),
                          child: MultiProvider(
                            providers: [
                              BlocProvider<GeneralSettingBloc>(
                                  create: (context) => injector()),
                              BlocProvider<AccountSettingBloc>(
                                  create: (context) => injector())
                            ],
                            child: IndexedStack(
                              sizing: StackFit.loose,
                              index: _currentIndex,
                              children: pages,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
