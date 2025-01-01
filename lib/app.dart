import 'package:flutter/material.dart';
import 'package:todo_app/config/themes/app_theme.dart';
import 'package:todo_app/core/utils/app_utils.dart';
import 'package:todo_app/feature/presentation/screens/splash_screen.dart';


class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppString.appName,
      theme: appTheme(),
      home: const SplashScreen(),
    );
  }
}

