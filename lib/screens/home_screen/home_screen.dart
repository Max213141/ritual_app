import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ritual_app/blocs/blocs.dart';
import 'package:ritual_app/screens/home_screen/widgets/widgets.dart';
import 'package:ritual_app/screens/screens.dart';
import 'package:ritual_app/utils/utils.dart';

// void _log(dynamic message) => Logger.projectLog(message, name: 'main_screen');

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    BlocProvider.of<MemoryDeskBloc>(context).add(GetMemoryDesks());

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
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
          title: Text(
            l10n.appTitle,
            style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 24),
          ),
          leading: const Padding(
            padding: EdgeInsets.only(
              left: 16.0,
            ),
            child: RitualAppSvgPicture(
              picture: 'assets/icons/logo_icon.svg',
              fit: BoxFit.fitWidth,
            ),
          ),
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
        floatingActionButton: SizedBox(
          height: deviceSize.width * .2,
          width: deviceSize.width * .2,
          child: FloatingActionButton(
            onPressed: () {
              GoRouter.of(context).go('/qr_scan');
            },
            elevation: 0,
            child: const RitualAppSvgPicture(
              picture: 'assets/icons/qr_scan_icon.svg',
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        body: MemoryDesksListScreen(
          l10n: l10n,
        ),
      ),
    );
  }
}
