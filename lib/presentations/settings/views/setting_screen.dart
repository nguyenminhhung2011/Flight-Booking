import 'package:flight_booking/core/config/common_ui_config.dart';
import 'package:flight_booking/core/dependency_injection/di.dart';
import 'package:flight_booking/generated/l10n.dart';
import 'package:flight_booking/presentations/settings/bloc/accout/account_setting_bloc.dart';
import 'package:flight_booking/presentations/settings/bloc/general/general_setting_bloc.dart';
import 'package:flight_booking/presentations/settings/bloc/setting_bloc.dart';
import 'package:flight_booking/presentations/settings/views/widgets/account_setting_tab.dart';
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

  late final List<Map<String, dynamic>> navigatorBarData = [
    {
      "label": S.of(context).generalSetting,
      "icon": Icons.person,
    },
    {
      "label": S.of(context).accountSetting,
      "icon": Icons.password,
    },
    {
      "label": S.of(context).ruleSettings,
      "icon": Icons.rule,
    },
  ];

  final PageController pageController =
      PageController(initialPage: 0, keepPage: true);

  final List<Widget> pages = [
    const GeneralSettingsTab(),
    const AccountSettingTab(),
    const PrincipleSettingTab(),
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
    return BlocListener<SettingBloc, SettingState>(
      listener: _stateChangeListener,
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
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
                          width: 1, color: Theme.of(context).dividerColor),
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
    );
  }
}
