import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:ritual_app/blocs/blocs.dart';
import 'package:ritual_app/utils/utils.dart';

class DevMenuWidget extends StatelessWidget {
  const DevMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: 300,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: MentalHealthDecorations.borders.radiusC20,
          //color: AppColor.mainDarkColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // BlocProvider.of<AuthBloc>(context).add(
                //   const LogOutEvent(),
                // );
              },
              child: const Text('Log Out'),
            ),
            ElevatedButton(
              onPressed: () =>
                  GoRouter.of(context).go('/main/breathing/breathing_items'),
              child: const Text('Go to the Breathing items screen'),
            ),
          ],
        ),
      ),
    );
  }
}
