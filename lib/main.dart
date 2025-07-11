import 'package:flutter/material.dart';
import 'package:flutter_train_app/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(themeMode: ThemeMode.system, home: HomePage());
  }
}
