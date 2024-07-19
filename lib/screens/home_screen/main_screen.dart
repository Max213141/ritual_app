import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ritual_app/blocs/blocs.dart';
import 'package:ritual_app/screens/home_screen/memory_page_screen.dart';
import 'package:ritual_app/screens/home_screen/widgets/widgets.dart';
import 'package:ritual_app/screens/qr_scanner_screen/qr_scanner_screen.dart';
import 'package:ritual_app/utils/utils.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'main_screen');

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  double navBarHeight = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _screens = [
    const MemoryPageScreen(
        // title: 'Main screen',
        ),
    const QrScanScreen(),
    // const MoodScreen(),
    // const SharedStoriesScreen(),
  ];
  // getAppBarTitle(AppLocalizations l10n) {
  //   // final String? username = HiveStore().getUserName();
  //   switch (_selectedIndex) {
  //     case 0:
  //       return Align(
  //         alignment: Alignment.centerLeft,
  //         child: RichText(
  //           text: TextSpan(
  //             children: [
  //               TextSpan(
  //                 text: l10n.mainScreenGoodDay,
  //                 style: MentalHealthTextStyles.text.signikaPrimaryFontF28
  //                     .copyWith(
  //                         //color: //AppColor.oneMoreDarkColor,
  //                         ),
  //               ),
  //               TextSpan(
  //                 text: 'Название',
  //                 style: MentalHealthTextStyles.text.userName,
  //               ),
  //             ],
  //           ),
  //         ),
  //       );

  //     case 1:
  //       return Align(
  //         alignment: Alignment.centerLeft,
  //         child: Text(
  //           l10n.mainScreenHabits,
  //           style: MentalHealthTextStyles.text.signikaPrimaryFontF28
  //               .copyWith(color: Colors.black),
  //         ),
  //       );
  //     case 2:
  //       return Align(
  //         alignment: Alignment.centerLeft,
  //         child: Text(
  //           l10n.mainScreenMoodStatistic,
  //           style: MentalHealthTextStyles.text.signikaPrimaryFontF28
  //               .copyWith(color: Colors.black),
  //         ),
  //       );
  //     case 3:
  //       return Align(
  //         alignment: Alignment.centerLeft,
  //         child: Text(
  //           l10n.mainScreenSharedStories,
  //           style: MentalHealthTextStyles.text.signikaPrimaryFontF28
  //               .copyWith(color: Colors.black),
  //         ),
  //       );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          logOutSuccess: () {
            GoRouter.of(context).go('/initial_page');
          },
          authError: (errorText) => showDialog(
            context: context,
            builder: (BuildContext context) {
              return ErrorDialogWidget(
                message: errorText,
              );
            },
          ),
        );
      },
      child: Scaffold(
        // endDrawer: const DrawerWidget(),
        //backgroundColor: //AppColor.primaryColor,
        appBar: AppBar(
          centerTitle: false,
          // isHomeScreen: _selectedIndex == 0,
          title: Text(
            l10n.appTitle,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: RitualAppSvgPicture(
              picture: 'assets/icons/logo_icon.svg',
              fit: BoxFit.contain,
            ),
          ),
          // preferredSize: const Size.fromHeight(56),
          actions: [
            Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const RitualAppSvgPicture(
                      picture: 'assets/icons/drawer_icon.svg'),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                );
              },
            ),
          ],
        ),
        drawer: const DrawerWidget(),
        // floatingActionButton: ElevatedButton(
        //   onPressed: () => showDialog(
        //     context: context,
        //     builder: (context) {
        //       return const Center(child: DevMenuWidget());
        //     },
        //   ),
        //   child: const Text('M'),
        // ),
        // bottomNavigationBar: LayoutBuilder(
        //   builder: (BuildContext context, BoxConstraints constraints) {
        //     return BottomNavBar(
        //       selectedIndex: _selectedIndex,
        //       onPressed: _onItemTapped,
        //     );
        //   },
        // ),
        body: _screens.elementAt(_selectedIndex),
      ),
    );
  }
}
