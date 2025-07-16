import 'package:flutter/material.dart';

/// 버튼 테마 정의

/// FilledButton 테마
final FilledButtonThemeData filledButtonTheme = FilledButtonThemeData(
  style: FilledButton.styleFrom(
    backgroundColor: Colors.purple,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    foregroundColor: Colors.white,
    textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
  ),
);
