
import 'package:flutter/material.dart';
import 'package:todo_app/core/utils/app_color.dart';

ThemeData appTheme ()
{
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.appColor),
    hintColor: AppColors.hintColor,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    textTheme: const TextTheme(
      button: TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.bold
      )
    ),
    useMaterial3: true,
  );
}