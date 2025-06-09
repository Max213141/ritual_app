import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ritual_app/blocs/blocs.dart';
import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/utils/utils.dart';

import 'drawer_item_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);

    // final String? username = HiveStore().getUserName();
    final List<DrawerItem> drawerItemsList = [
      // DrawerItem(
      //   title: l10n.drawerProfile,
      //   icon: 'assets/menu_icons/profile.svg',
      //   onTap: () => GoRouter.of(context).go('/main/profile_screen'),
      // ),
      DrawerItem(
        title: l10n.drawerAboutUs,
        icon: 'assets/menu_icons/about_us.svg',
        onTap: () => GoRouter.of(context).go('/home/about_us_screen'),
      ),
      // DrawerItem(
      //   title: 'Notifications',
      //   icon: 'assets/menu_icons/notifications.svg',
      // ),
      DrawerItem(
        title: l10n.drawerSupport,
        icon: 'assets/menu_icons/support.svg',
        onTap: () => GoRouter.of(context).go('/home/support_screen'),
      ),
      DrawerItem(
        title: l10n.drawerSettings,
        icon: 'assets/menu_icons/settings.svg',
        onTap: () => GoRouter.of(context).go('/home/settings_screen'),
      ),
      DrawerItem(
        title: l10n.drawerLogOut,
        icon: 'assets/menu_icons/log_out.svg',
        onTap: () => BlocProvider.of<AuthBloc>(context).add(
          const LogOutEvent(),
        ),
      )
    ];

    return Drawer(
      elevation: 2,
      //backgroundColor: //AppColor.drawerColor,
      //surfaceTintColor: //AppColor.drawerColor,
      width: MediaQuery.of(context).size.width * 0.6,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.13,
              child: DrawerHeader(
                  padding: const EdgeInsets.fromLTRB(4.0, 16.0, 4.0, 8.0),
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: Divider.createBorderSide(
                        context,
                        color: Colors.transparent,
                        width: 0,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6.0),
                        child: RitualAppSvgPicture(
                          picture: 'assets/icons/logo_icon.svg',
                          fit: BoxFit.contain,
                        ),
                      ),
                      Text(
                        l10n.appTitle,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.w900,
                              fontSize: 24,
                            ),
                      ),
                    ],
                  )),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...drawerItemsList.getRange(0, 3).map(
                        (drawerItem) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: DrawerItemWidget(item: drawerItem),
                        ),
                      ),
                  const Spacer(),
                  DrawerItemWidget(item: drawerItemsList.last),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
