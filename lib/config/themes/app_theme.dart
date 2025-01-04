import 'package:flutter/material.dart';
import 'package:todo_app/core/utils/app_color.dart';
import 'package:todo_app/core/utils/app_utils.dart';

ThemeData appTheme ()
{
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.appColor),
    hintColor: AppColors.hintColor,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: AppString.fontFamily,
    useMaterial3: true,
  );
}