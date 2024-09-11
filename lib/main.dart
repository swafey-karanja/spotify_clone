import 'package:bloc_project/core/configs/themes/app.theme.dart';
import 'package:bloc_project/presentation/splash/pages/splash.page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      home: const SplashPage(),
    );
  }
}

