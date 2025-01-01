import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/config/themes/app_theme.dart';
import 'package:todo_app/core/utils/app_utils.dart';
import 'package:todo_app/feature/presentation/screens/login_screen.dart';
import 'package:todo_app/feature/presentation/widgets/custom_suffix_icon.dart';

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 924),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppString.appName,
        theme: appTheme(),
        home: child,
      ),
      child: const LoginScreen(),
    );
  }
}
