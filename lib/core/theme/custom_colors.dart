import 'package:flutter/material.dart';

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
