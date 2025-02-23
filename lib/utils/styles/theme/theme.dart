import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff090909),
      surfaceTint: Color(0xff5f5e5e),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff2b2b2b),
      onPrimaryContainer: Color(0xffb9b7b6),
      secondary: Color(0xff5f5e5e),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffe9e6e5),
      onSecondaryContainer: Color(0xff4b4a4a),
      tertiary: Color(0xff0a090a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff2c2b2b),
      onTertiaryContainer: Color(0xffbab7b6),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffdf8f8),
      onSurface: Color(0xff1c1b1b),
      onSurfaceVariant: Color(0xff444748),
      outline: Color(0xff747878),
      outlineVariant: Color(0xffc4c7c7),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff313030),
      inversePrimary: Color(0xffc8c6c5),
      primaryFixed: Color(0xffe5e2e1),
      onPrimaryFixed: Color(0xff1b1b1c),
      primaryFixedDim: Color(0xffc8c6c5),
      onPrimaryFixedVariant: Color(0xff474746),
      secondaryFixed: Color(0xffe5e2e1),
      onSecondaryFixed: Color(0xff1c1b1b),
      secondaryFixedDim: Color(0xffc9c6c5),
      onSecondaryFixedVariant: Color(0xff474646),
      tertiaryFixed: Color(0xffe6e1e1),
      onTertiaryFixed: Color(0xff1c1b1b),
      tertiaryFixedDim: Color(0xffc9c6c5),
      onTertiaryFixedVariant: Color(0xff484646),
      surfaceDim: Color(0xffddd9d8),
      surfaceBright: Color(0xfffdf8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff7f3f2),
      surfaceContainer: Color(0xfff1edec),
      surfaceContainerHigh: Color(0xffebe7e6),
      surfaceContainerHighest: Color(0xffe5e2e1),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff090909),
      surfaceTint: Color(0xff5f5e5e),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff2b2b2b),
      onPrimaryContainer: Color(0xffe6e3e3),
      secondary: Color(0xff434342),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff767474),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff0a090a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff2c2b2b),
      onTertiaryContainer: Color(0xffe8e3e3),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffdf8f8),
      onSurface: Color(0xff1c1b1b),
      onSurfaceVariant: Color(0xff404344),
      outline: Color(0xff5c6060),
      outlineVariant: Color(0xff787b7c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff313030),
      inversePrimary: Color(0xffc8c6c5),
      primaryFixed: Color(0xff757474),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff5d5c5b),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff767474),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff5d5c5b),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff767474),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff5d5b5b),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffddd9d8),
      surfaceBright: Color(0xfffdf8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff7f3f2),
      surfaceContainer: Color(0xfff1edec),
      surfaceContainerHigh: Color(0xffebe7e6),
      surfaceContainerHighest: Color(0xffe5e2e1),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff090909),
      surfaceTint: Color(0xff5f5e5e),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff2b2b2b),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff222222),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff434342),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff0a090a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff2c2b2b),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffdf8f8),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff212425),
      outline: Color(0xff404344),
      outlineVariant: Color(0xff404344),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff313030),
      inversePrimary: Color(0xffeeebeb),
      primaryFixed: Color(0xff434343),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff2d2d2d),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff434342),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff2d2c2c),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff444242),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff2e2c2c),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffddd9d8),
      surfaceBright: Color(0xfffdf8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff7f3f2),
      surfaceContainer: Color(0xfff1edec),
      surfaceContainerHigh: Color(0xffebe7e6),
      surfaceContainerHighest: Color(0xffe5e2e1),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffc8c6c5),
      surfaceTint: Color(0xffc8c6c5),
      onPrimary: Color(0xff303030),
      primaryContainer: Color(0xff171717),
      onPrimaryContainer: Color(0xffa4a2a2),
      secondary: Color(0xffc9c6c5),
      onSecondary: Color(0xff313030),
      secondaryContainer: Color(0xff3e3d3d),
      onSecondaryContainer: Color(0xffd3d0cf),
      tertiary: Color(0xffc9c6c5),
      onTertiary: Color(0xff313030),
      tertiaryContainer: Color(0xff181717),
      onTertiaryContainer: Color(0xffa6a2a2),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff141313),
      onSurface: Color(0xffe5e2e1),
      onSurfaceVariant: Color(0xffc4c7c7),
      outline: Color(0xff8e9192),
      outlineVariant: Color(0xff444748),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e2e1),
      inversePrimary: Color(0xff5f5e5e),
      primaryFixed: Color(0xffe5e2e1),
      onPrimaryFixed: Color(0xff1b1b1c),
      primaryFixedDim: Color(0xffc8c6c5),
      onPrimaryFixedVariant: Color(0xff474746),
      secondaryFixed: Color(0xffe5e2e1),
      onSecondaryFixed: Color(0xff1c1b1b),
      secondaryFixedDim: Color(0xffc9c6c5),
      onSecondaryFixedVariant: Color(0xff474646),
      tertiaryFixed: Color(0xffe6e1e1),
      onTertiaryFixed: Color(0xff1c1b1b),
      tertiaryFixedDim: Color(0xffc9c6c5),
      onTertiaryFixedVariant: Color(0xff484646),
      surfaceDim: Color(0xff141313),
      surfaceBright: Color(0xff3a3939),
      surfaceContainerLowest: Color(0xff0e0e0e),
      surfaceContainerLow: Color(0xff1c1b1b),
      surfaceContainer: Color(0xff201f1f),
      surfaceContainerHigh: Color(0xff2b2a2a),
      surfaceContainerHighest: Color(0xff353434),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffcdcaca),
      surfaceTint: Color(0xffc8c6c5),
      onPrimary: Color(0xff161616),
      primaryContainer: Color(0xff929090),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffcdcac9),
      onSecondary: Color(0xff161616),
      secondaryContainer: Color(0xff929090),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffcecac9),
      onTertiary: Color(0xff171616),
      tertiaryContainer: Color(0xff939090),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff141313),
      onSurface: Color(0xfffefaf9),
      onSurfaceVariant: Color(0xffc8cbcc),
      outline: Color(0xffa0a3a4),
      outlineVariant: Color(0xff808484),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e2e1),
      inversePrimary: Color(0xff484848),
      primaryFixed: Color(0xffe5e2e1),
      onPrimaryFixed: Color(0xff111111),
      primaryFixedDim: Color(0xffc8c6c5),
      onPrimaryFixedVariant: Color(0xff363636),
      secondaryFixed: Color(0xffe5e2e1),
      onSecondaryFixed: Color(0xff111111),
      secondaryFixedDim: Color(0xffc9c6c5),
      onSecondaryFixedVariant: Color(0xff373636),
      tertiaryFixed: Color(0xffe6e1e1),
      onTertiaryFixed: Color(0xff121111),
      tertiaryFixedDim: Color(0xffc9c6c5),
      onTertiaryFixedVariant: Color(0xff373636),
      surfaceDim: Color(0xff141313),
      surfaceBright: Color(0xff3a3939),
      surfaceContainerLowest: Color(0xff0e0e0e),
      surfaceContainerLow: Color(0xff1c1b1b),
      surfaceContainer: Color(0xff201f1f),
      surfaceContainerHigh: Color(0xff2b2a2a),
      surfaceContainerHighest: Color(0xff353434),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffdfaf9),
      surfaceTint: Color(0xffc8c6c5),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffcdcaca),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffefaf9),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffcdcac9),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffefaf9),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffcecac9),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff141313),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfff9fbfb),
      outline: Color(0xffc8cbcc),
      outlineVariant: Color(0xffc8cbcc),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e2e1),
      inversePrimary: Color(0xff2a2a2a),
      primaryFixed: Color(0xffe9e6e6),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffcdcaca),
      onPrimaryFixedVariant: Color(0xff161616),
      secondaryFixed: Color(0xffe9e6e5),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffcdcac9),
      onSecondaryFixedVariant: Color(0xff161616),
      tertiaryFixed: Color(0xffeae6e5),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffcecac9),
      onTertiaryFixedVariant: Color(0xff171616),
      surfaceDim: Color(0xff141313),
      surfaceBright: Color(0xff3a3939),
      surfaceContainerLowest: Color(0xff0e0e0e),
      surfaceContainerLow: Color(0xff1c1b1b),
      surfaceContainer: Color(0xff201f1f),
      surfaceContainerHigh: Color(0xff2b2a2a),
      surfaceContainerHighest: Color(0xff353434),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.surface,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
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
