import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class SplashwebDisabler extends StatefulWidget {
  final Widget child;
  const SplashwebDisabler({super.key, required this.child});
  @override
  State<SplashwebDisabler> createState() => _SplashwebDisablerState();
}

class _SplashwebDisablerState extends State<SplashwebDisabler> {
  @override
  void initState() {
    super.initState();
    // after first frame, tear down the splash
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FlutterNativeSplash.remove();
    });
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
