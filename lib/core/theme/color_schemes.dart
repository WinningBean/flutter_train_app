import 'package:flutter/material.dart';

/// 색상 테마 정의

/// lightTheme 색상 테마
final ColorScheme lightColorScheme = ColorScheme.fromSeed(
  seedColor: Colors.purple,
  brightness: Brightness.light,
  outline: Colors.grey[300],
);

/// darkTheme 색상 테마
final ColorScheme darkColorScheme = ColorScheme.fromSeed(
  seedColor: Colors.purple,
  brightness: Brightness.dark,
  outline: Colors.grey[900],
);
