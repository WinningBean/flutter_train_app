import 'package:flutter/material.dart';

final FilledButtonThemeData filledButtonTheme = FilledButtonThemeData(
  style: FilledButton.styleFrom(
    backgroundColor: Colors.purple,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    foregroundColor: Colors.white,
    textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
  ),
);
