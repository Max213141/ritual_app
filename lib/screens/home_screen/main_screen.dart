import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ritual_app/blocs/blocs.dart';
import 'package:ritual_app/screens/home_screen/memory_page_screen.dart';
import 'package:ritual_app/screens/home_screen/widgets/widgets.dart';
import 'package:ritual_app/screens/qr_scanner_screen/qr_scanner_screen.dart';
import 'package:ritual_app/utils/utils.dart';

// void _log(dynamic message) => Logger.projectLog(message, name: 'main_screen');

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final int _selectedIndex = 0;
  double navBarHeight = 0;

  final List<Widget> _screens = [
    const MemoryPageScreen(),
    const QrScanScreen(),
  ];

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
        body: _screens.elementAt(_selectedIndex),
      ),
    );
  }
}
