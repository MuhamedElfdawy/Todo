import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    textTheme: TextTheme(
      labelLarge: TextStyle(
        color: Colors.white,
        fontSize: 19.sp,
        fontWeight: FontWeight.bold,
      ),
    ),
    useMaterial3: true,
  );
}