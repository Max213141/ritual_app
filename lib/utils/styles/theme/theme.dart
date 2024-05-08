import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4287646527),
      surfaceTint: Color(4287646527),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4294957780),
      onPrimaryContainer: Color(4281993476),
      secondary: Color(4286010961),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294957780),
      onSecondaryContainer: Color(4281079057),
      tertiary: Color(4285488174),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294631590),
      onTertiaryContainer: Color(4280621568),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      background: Color(4294965494),
      onBackground: Color(4280490264),
      surface: Color(4294965494),
      onSurface: Color(4280490264),
      surfaceVariant: Color(4294303193),
      onSurfaceVariant: Color(4283646784),
      outline: Color(4286935920),
      outlineVariant: Color(4292395710),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281937452),
      inverseOnSurface: Color(4294962666),
      inversePrimary: Color(4294948007),
      primaryFixed: Color(4294957780),
      onPrimaryFixed: Color(4281993476),
      primaryFixedDim: Color(4294948007),
      onPrimaryFixedVariant: Color(4285740073),
      secondaryFixed: Color(4294957780),
      onSecondaryFixed: Color(4281079057),
      secondaryFixedDim: Color(4293377461),
      onSecondaryFixedVariant: Color(4284301114),
      tertiaryFixed: Color(4294631590),
      onTertiaryFixed: Color(4280621568),
      tertiaryFixedDim: Color(4292723852),
      onTertiaryFixedVariant: Color(4283843865),
      surfaceDim: Color(4293449427),
      surfaceBright: Color(4294965494),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963438),
      surfaceContainer: Color(4294765287),
      surfaceContainerHigh: Color(4294436065),
      surfaceContainerHighest: Color(4294041563),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4285411366),
      surfaceTint: Color(4287646527),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4289355859),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4284037942),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4287589478),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4283515157),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4287066690),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      background: Color(4294965494),
      onBackground: Color(4280490264),
      surface: Color(4294965494),
      onSurface: Color(4280490264),
      surfaceVariant: Color(4294303193),
      onSurfaceVariant: Color(4283383613),
      outline: Color(4285291352),
      outlineVariant: Color(4287199091),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281937452),
      inverseOnSurface: Color(4294962666),
      inversePrimary: Color(4294948007),
      primaryFixed: Color(4289355859),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4287449149),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4287589478),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4285879374),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4287066690),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4285291052),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293449427),
      surfaceBright: Color(4294965494),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963438),
      surfaceContainer: Color(4294765287),
      surfaceContainerHigh: Color(4294436065),
      surfaceContainerHighest: Color(4294041563),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4282585097),
      surfaceTint: Color(4287646527),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4285411366),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281605143),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4284037942),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281147392),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4283515157),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      background: Color(4294965494),
      onBackground: Color(4280490264),
      surface: Color(4294965494),
      onSurface: Color(4278190080),
      surfaceVariant: Color(4294303193),
      onSurfaceVariant: Color(4281213215),
      outline: Color(4283383613),
      outlineVariant: Color(4283383613),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281937452),
      inverseOnSurface: Color(4294967295),
      inversePrimary: Color(4294961122),
      primaryFixed: Color(4285411366),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4283505426),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4284037942),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282394145),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4283515157),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4281936642),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293449427),
      surfaceBright: Color(4294965494),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963438),
      surfaceContainer: Color(4294765287),
      surfaceContainerHigh: Color(4294436065),
      surfaceContainerHighest: Color(4294041563),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294948007),
      surfaceTint: Color(4294948007),
      onPrimary: Color(4283833877),
      primaryContainer: Color(4285740073),
      onPrimaryContainer: Color(4294957780),
      secondary: Color(4293377461),
      onSecondary: Color(4282657317),
      secondaryContainer: Color(4284301114),
      onSecondaryContainer: Color(4294957780),
      tertiary: Color(4292723852),
      onTertiary: Color(4282199556),
      tertiaryContainer: Color(4283843865),
      onTertiaryContainer: Color(4294631590),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      background: Color(4279898384),
      onBackground: Color(4294041563),
      surface: Color(4279898384),
      onSurface: Color(4294041563),
      surfaceVariant: Color(4283646784),
      onSurfaceVariant: Color(4292395710),
      outline: Color(4288711817),
      outlineVariant: Color(4283646784),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4294041563),
      inverseOnSurface: Color(4281937452),
      inversePrimary: Color(4287646527),
      primaryFixed: Color(4294957780),
      onPrimaryFixed: Color(4281993476),
      primaryFixedDim: Color(4294948007),
      onPrimaryFixedVariant: Color(4285740073),
      secondaryFixed: Color(4294957780),
      onSecondaryFixed: Color(4281079057),
      secondaryFixedDim: Color(4293377461),
      onSecondaryFixedVariant: Color(4284301114),
      tertiaryFixed: Color(4294631590),
      onTertiaryFixed: Color(4280621568),
      tertiaryFixedDim: Color(4292723852),
      onTertiaryFixedVariant: Color(4283843865),
      surfaceDim: Color(4279898384),
      surfaceBright: Color(4282529589),
      surfaceContainerLowest: Color(4279503883),
      surfaceContainerLow: Color(4280490264),
      surfaceContainer: Color(4280753436),
      surfaceContainerHigh: Color(4281477158),
      surfaceContainerHighest: Color(4282200624),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294949550),
      surfaceTint: Color(4294948007),
      onPrimary: Color(4281533698),
      primaryContainer: Color(4291591021),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4293706170),
      onSecondary: Color(4280684556),
      secondaryContainer: Color(4289628289),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4292987024),
      onTertiary: Color(4280161536),
      tertiaryContainer: Color(4288974427),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      background: Color(4279898384),
      onBackground: Color(4294041563),
      surface: Color(4279898384),
      onSurface: Color(4294965752),
      surfaceVariant: Color(4283646784),
      onSurfaceVariant: Color(4292658882),
      outline: Color(4289961627),
      outlineVariant: Color(4287790972),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4294041563),
      inverseOnSurface: Color(4281477158),
      inversePrimary: Color(4285805866),
      primaryFixed: Color(4294957780),
      onPrimaryFixed: Color(4281074176),
      primaryFixedDim: Color(4294948007),
      onPrimaryFixedVariant: Color(4284359706),
      secondaryFixed: Color(4294957780),
      onSecondaryFixed: Color(4280290056),
      secondaryFixedDim: Color(4293377461),
      onSecondaryFixedVariant: Color(4283117354),
      tertiaryFixed: Color(4294631590),
      onTertiaryFixed: Color(4279767040),
      tertiaryFixedDim: Color(4292723852),
      onTertiaryFixedVariant: Color(4282659849),
      surfaceDim: Color(4279898384),
      surfaceBright: Color(4282529589),
      surfaceContainerLowest: Color(4279503883),
      surfaceContainerLow: Color(4280490264),
      surfaceContainer: Color(4280753436),
      surfaceContainerHigh: Color(4281477158),
      surfaceContainerHighest: Color(4282200624),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294965752),
      surfaceTint: Color(4294948007),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4294949550),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294965752),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4293706170),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294966006),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4292987024),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      background: Color(4279898384),
      onBackground: Color(4294041563),
      surface: Color(4279898384),
      onSurface: Color(4294967295),
      surfaceVariant: Color(4283646784),
      onSurfaceVariant: Color(4294965752),
      outline: Color(4292658882),
      outlineVariant: Color(4292658882),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4294041563),
      inverseOnSurface: Color(4278190080),
      inversePrimary: Color(4283308048),
      primaryFixed: Color(4294959323),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4294949550),
      onPrimaryFixedVariant: Color(4281533698),
      secondaryFixed: Color(4294959323),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4293706170),
      onSecondaryFixedVariant: Color(4280684556),
      tertiaryFixed: Color(4294960298),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4292987024),
      onTertiaryFixedVariant: Color(4280161536),
      surfaceDim: Color(4279898384),
      surfaceBright: Color(4282529589),
      surfaceContainerLowest: Color(4279503883),
      surfaceContainerLow: Color(4280490264),
      surfaceContainer: Color(4280753436),
      surfaceContainerHigh: Color(4281477158),
      surfaceContainerHighest: Color(4282200624),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary, 
    required this.surfaceTint, 
    required this.onPrimary, 
    required this.primaryContainer, 
    required this.onPrimaryContainer, 
    required this.secondary, 
    required this.onSecondary, 
    required this.secondaryContainer, 
    required this.onSecondaryContainer, 
    required this.tertiary, 
    required this.onTertiary, 
    required this.tertiaryContainer, 
    required this.onTertiaryContainer, 
    required this.error, 
    required this.onError, 
    required this.errorContainer, 
    required this.onErrorContainer, 
    required this.background, 
    required this.onBackground, 
    required this.surface, 
    required this.onSurface, 
    required this.surfaceVariant, 
    required this.onSurfaceVariant, 
    required this.outline, 
    required this.outlineVariant, 
    required this.shadow, 
    required this.scrim, 
    required this.inverseSurface, 
    required this.inverseOnSurface, 
    required this.inversePrimary, 
    required this.primaryFixed, 
    required this.onPrimaryFixed, 
    required this.primaryFixedDim, 
    required this.onPrimaryFixedVariant, 
    required this.secondaryFixed, 
    required this.onSecondaryFixed, 
    required this.secondaryFixedDim, 
    required this.onSecondaryFixedVariant, 
    required this.tertiaryFixed, 
    required this.onTertiaryFixed, 
    required this.tertiaryFixedDim, 
    required this.onTertiaryFixedVariant, 
    required this.surfaceDim, 
    required this.surfaceBright, 
    required this.surfaceContainerLowest, 
    required this.surfaceContainerLow, 
    required this.surfaceContainer, 
    required this.surfaceContainerHigh, 
    required this.surfaceContainerHighest, 
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
