import 'package:flutter/material.dart';
import 'package:ritual_app/utils/utils.dart';
// import 'package:ritual_app/utils/utils.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bgColor = Theme.of(context).primaryColorDark;
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width / 2,
          child: const RitualAppSvgPicture(
            picture: 'assets/icons/memento-logo.svg',
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
