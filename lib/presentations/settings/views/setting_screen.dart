import 'package:flight_booking/core/config/common_ui_config.dart';
import 'package:flight_booking/generated/l10n.dart';
import 'package:flight_booking/presentations/settings/bloc/setting_bloc.dart';
import 'package:flight_booking/presentations/settings/widgets/account_setting_tab.dart';
import 'package:flight_booking/presentations/settings/widgets/general_setting_tab.dart';
import 'package:flight_booking/presentations/settings/widgets/principle_setting_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/widgets/label_textfield.dart';

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

  late final List<Widget> pages = [
    const GeneralSettingsTab(),
    const AccountSettingTab(),
    const PrincipleSettingTab(),
  ];

  final PageController pageController = PageController(initialPage: 0);

  @override
  void initState() {
    _settingBloc.add(const SettingEvent.started());
    super.initState();
  }

  void _stateChangeListener(BuildContext context, SettingState state) {
    state.whenOrNull(
      initial: (data) {},
      switchTab: (data) {
        pageController.animateToPage(
          data.currentPage,
          duration: const Duration(milliseconds: 200),
          curve: Curves.bounceIn,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              BlocConsumer<SettingBloc, SettingState>(
                listener: _stateChangeListener,
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
                  child: PageView(
                    controller: pageController,
                    children: pages,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class XL extends StatelessWidget {
  const XL({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).generalSetting,
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        Divider(
          height: 10,
          thickness: 0.5,
          color: Theme.of(context).dividerColor,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Theme.of(context).cardColor,
              child: const Icon(
                Icons.person,
                size: 30,
              ),
            ),
            const SizedBox(width: 5),
            TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: Theme.of(context).cardColor,
                shape: RoundedRectangleBorder(
                  borderRadius: CommonAppUIConfig.primaryRadiusBorder,
                ),
              ),
              onPressed: () {},
              icon: const Icon(Icons.upload_file),
              label: Text(
                S.of(context).uploadProfileImage,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
        Divider(
          height: 10,
          thickness: 0.5,
          color: Theme.of(context).dividerColor,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: LabelTextField(title: S.of(context).username),
            ),
            const SizedBox(width: 50),
            Expanded(
              child: LabelTextField(title: S.of(context).name),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: LabelTextField(title: S.of(context).username),
            ),
            const SizedBox(width: 50),
            Expanded(
              child: LabelTextField(title: S.of(context).name),
            ),
          ],
        ),
        Divider(
          height: 10,
          thickness: 0.5,
          color: Theme.of(context).dividerColor,
        ),
        TextButton.icon(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor:
                Theme.of(context).buttonTheme.colorScheme?.background,
          ),
          icon: const Icon(Icons.check),
          label: Text(
            S.of(context).saveChange,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Theme.of(context).dividerColor),
            borderRadius: CommonAppUIConfig.primaryRadiusBorder,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                S.of(context).emailPhoneDetail,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Divider(
                height: 10,
                thickness: 0,
                color: Theme.of(context).dividerColor,
              ),
              Row(
                children: [
                  Expanded(
                    child: LabelTextField(
                      title: S.of(context).email,
                      isColumn: false,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Theme.of(context).cardColor,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: CommonAppUIConfig.primaryRadiusBorder,
                        side: BorderSide(
                            color: Theme.of(context).dividerColor, width: 0.5),
                      ),
                    ),
                    child: Text(S.of(context).update),
                  )
                ],
              ),
              const SizedBox(width: 50),
              Row(
                children: [
                  Expanded(
                    child: LabelTextField(
                      title: S.of(context).phoneNumber,
                      isColumn: false,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Theme.of(context).cardColor,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: CommonAppUIConfig.primaryRadiusBorder,
                        side: BorderSide(
                          color: Theme.of(context).dividerColor,
                          width: 0.5,
                        ),
                      ),
                    ),
                    child: Text(S.of(context).update),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
