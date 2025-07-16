import 'package:flutter/material.dart';
import 'package:flutter_train_app/core/theme/button_themes.dart';
import 'package:flutter_train_app/core/theme/color_schemes.dart';
import 'package:flutter_train_app/core/theme/cupertino_themes.dart';
import 'package:flutter_train_app/core/theme/custom_colors.dart';
import 'package:flutter_train_app/core/theme/text_themes.dart';

final lightTheme = ThemeData(
  colorScheme: lightColorScheme,
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
  textTheme: lightTextTheme,
  filledButtonTheme: filledButtonTheme,
  cupertinoOverrideTheme: cupertinoTheme,
);

final darkTheme = ThemeData(
  colorScheme: darkColorScheme,
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
  textTheme: darkTextTheme,
  filledButtonTheme: filledButtonTheme,
  cupertinoOverrideTheme: cupertinoTheme,
);
