import 'package:flutter/material.dart';

final TextTheme lightTextTheme = TextTheme(
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
);

final TextTheme darkTextTheme = TextTheme(
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
);
