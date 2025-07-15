import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.purple,
    brightness: Brightness.light,
    outline: Colors.grey[300],
  ),
  dividerColor: Colors.grey[400],
  highlightColor: Colors.purple,
  disabledColor: Colors.grey[300],
  extensions: [
    CustomColors(
      homePageBackgroundColor: Colors.grey[200]!,
      stationBoxColor: Colors.white,
      disabledTextColor: Colors.grey[400]!,
    ),
  ],
  textTheme: TextTheme(
    displayLarge: TextStyle(fontSize: 40),
    displayMedium: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.purple,
      fontSize: 30,
    ),
    labelLarge: TextStyle(fontSize: 18),
    labelMedium: TextStyle(
      fontSize: 16,
      color: Colors.grey,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      backgroundColor: Colors.purple,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      foregroundColor: Colors.white,
      textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    ),
  ),
  cupertinoOverrideTheme: CupertinoThemeData(
    primaryColor: CupertinoColors.activeBlue,
  ),
);

final darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.purple,
    brightness: Brightness.dark,
    outline: Colors.grey[900],
  ),
  scaffoldBackgroundColor: Colors.black,
  dividerColor: Colors.grey[400],
  highlightColor: Colors.purple,
  disabledColor: Colors.grey[700],
  extensions: [
    CustomColors(
      homePageBackgroundColor: Colors.black,
      stationBoxColor: Colors.white24,
      disabledTextColor: Colors.grey[800]!,
    ),
  ],
  textTheme: TextTheme(
    displayLarge: TextStyle(color: Colors.white, fontSize: 40),
    displayMedium: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.purple,
      fontSize: 30,
    ),
    labelLarge: TextStyle(fontSize: 18),
    labelMedium: TextStyle(
      fontSize: 16,
      color: Colors.grey,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      backgroundColor: Colors.purple,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      foregroundColor: Colors.white,
      textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    ),
  ),
  cupertinoOverrideTheme: CupertinoThemeData(
    primaryColor: CupertinoColors.activeBlue,
  ),
);

@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  final Color homePageBackgroundColor;
  final Color stationBoxColor;
  final Color disabledTextColor;

  const CustomColors({
    required this.homePageBackgroundColor,
    required this.stationBoxColor,
    required this.disabledTextColor,
  });

  @override
  CustomColors copyWith({
    Color? homePageBackgroundColor,
    Color? stationBoxColor,
    Color? disabledTextColor,
  }) {
    return CustomColors(
      homePageBackgroundColor:
          homePageBackgroundColor ?? this.homePageBackgroundColor,
      stationBoxColor: stationBoxColor ?? this.stationBoxColor,
      disabledTextColor: disabledTextColor ?? this.disabledTextColor,
    );
  }

  @override
  CustomColors lerp(CustomColors? other, double t) {
    if (other is! CustomColors) return this;
    return CustomColors(
      homePageBackgroundColor: Color.lerp(
        homePageBackgroundColor,
        other.homePageBackgroundColor,
        t,
      )!,
      stationBoxColor: Color.lerp(stationBoxColor, other.stationBoxColor, t)!,
      disabledTextColor: Color.lerp(
        disabledTextColor,
        other.disabledTextColor,
        t,
      )!,
    );
  }
}
