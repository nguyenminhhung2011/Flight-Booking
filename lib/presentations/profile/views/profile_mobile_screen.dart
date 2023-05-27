import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/const/image_const.dart';
import 'package:flight_booking/core/components/widgets/appbar_widget.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/presentations/profile/views/widgets/bottom_change_password.dart';
import 'package:flight_booking/presentations/profile/views/widgets/bottom_update_profile.dart';
import 'package:flight_booking/presentations/profile/views/widgets/profile_view_row_custom.dart';
import 'package:flight_booking/presentations_mobile/routes_mobile.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

const _hMargin = 15.0;

class ProfileMobileScreen extends StatefulWidget {
  const ProfileMobileScreen({super.key});

  @override
  State<ProfileMobileScreen> createState() => _ProfileMobileScreenState();
}

class _ProfileMobileScreenState extends State<ProfileMobileScreen> {
  void _onChangeTheme() {}
  void _onChangeLanguage() {}
  void _onSave() {
    context.openListPageWithRoute(RoutesMobile.save);
  }

  void _onOpenFlightHistoryScreen() {
    context.openPageWithRouteAndParams(RoutesMobile.flightHistoryDetail, '');
  }

  void _onSignOut() {}

  Future _onChangePassword() {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        top: Radius.circular(15.0),
      )),
      builder: (context) {
        return const BottomChangePassword();
      },
    );
  }

  Future _onUpdateProfile() {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        top: Radius.circular(15.0),
      )),
      builder: (context) {
        return const BottomUpdateProfile();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final heightDevice = context.heightDevice;
    var headerStyle = context.titleMedium.copyWith(
      fontWeight: FontWeight.bold,
    );
    var suffixTextStyle = context.titleSmall.copyWith(
      color: Colors.grey,
      fontWeight: FontWeight.w500,
    );
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.infinity,
              height: heightDevice * 0.4,
              color: Theme.of(context).primaryColor,
            ),
          ),
          ListView(
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            children: [
              SizedBox(height: heightDevice * 0.1),
              _profileContainerField(
                context,
                Column(
                  children: [
                    Row(
                      children: [
                        const AvatarWidget(
                          height: 70.0,
                          width: 70.0,
                          imageUrl: ImageConst.avatarDefaulte,
                        ),
                        const SizedBox(width: 10.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Nguyen Minh Hung',
                                maxLines: 1,
                                style: context.titleLarge.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'hungnguyen.201102@gmail.com',
                                maxLines: 1,
                                style: context.titleMedium.copyWith(
                                    fontWeight: FontWeight.w500,
                                    overflow: TextOverflow.ellipsis),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    ProfileViewRowCustom(
                      header: S.of(context).changePassword,
                      onPress: _onChangePassword,
                    ),
                    ProfileViewRowCustom(
                      header: S.of(context).updateProfile,
                      onPress: _onUpdateProfile,
                    ),
                  ]
                      .expand((element) => [
                            element,
                            const SizedBox(height: 10, child: Divider())
                          ])
                      .toList()
                    ..removeLast(),
                ),
              ),
              const SizedBox(height: 15.0),
              _profileContainerField(
                context,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(S.of(context).overview, style: headerStyle),
                    const SizedBox(height: 10.0),
                    ...[
                      ProfileViewRowCustom(
                        header: S.of(context).save,
                        onPress: _onSave,
                      ),
                      ProfileViewRowCustom(header: S.of(context).payment),
                      ProfileViewRowCustom(header: S.of(context).myReview),
                      ProfileViewRowCustom(header: S.of(context).wallet),
                      ProfileViewRowCustom(
                        header: S.of(context).flightHistory,
                        onPress: _onOpenFlightHistoryScreen,
                      )
                    ]
                        .expand(
                          (element) => [
                            element,
                            const SizedBox(height: 10.0, child: Divider())
                          ],
                        )
                        .toList()
                      ..removeLast()
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
              _profileContainerField(
                context,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(S.of(context).anotherSettings, style: headerStyle),
                    const SizedBox(height: 10.0),
                    ...[
                      ProfileViewRowCustom(
                        onPress: _onChangeTheme,
                        header: S.of(context).theme,
                        suffix: Text(
                          S.of(context).lightTheme,
                          style: suffixTextStyle,
                        ),
                      ),
                      ProfileViewRowCustom(
                        onPress: _onChangeLanguage,
                        header: S.of(context).language,
                        suffix: Text(
                          S.of(context).english,
                          style: suffixTextStyle,
                        ),
                      ),
                      ProfileViewRowCustom(
                        header: S.of(context).signOut,
                        headerStyle: headerStyle.copyWith(color: Colors.red),
                        suffix: const SizedBox(),
                        onPress: _onSignOut,
                      )
                    ]
                        .expand(
                          (element) => [
                            element,
                            const SizedBox(height: 10.0, child: Divider())
                          ],
                        )
                        .toList()
                      ..removeLast()
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Container _profileContainerField(BuildContext context, Widget widget) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15.0),
      margin: const EdgeInsets.symmetric(horizontal: _hMargin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Theme.of(context).cardColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(0.1),
            blurRadius: 5.0,
          )
        ],
      ),
      child: widget,
    );
  }
}
