// import 'dart:io';
import 'package:flutter/material.dart';

abstract class AppConfig {
  // static final bool isApple = Platform.isMacOS || Platform.isIOS;
  // static final bool isDesktop =
  //     Platform.isMacOS || Platform.isWindows || Platform.isLinux;

  static const supportedLocales = [
    Locale('en'),
    Locale('ru'),
    Locale('pl'),
  ];

  // /// each half of an hour
  // static const int intervalsPerDay = (60 * 24) ~/ minutesPerInterval;
  // static const int minutesPerInterval = 30;

  // static const double contentWidthLimit = 637.0;
}
