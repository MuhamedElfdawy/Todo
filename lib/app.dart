import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/config/routes/app_routes.dart';
import 'package:todo_app/config/themes/app_theme.dart';
import 'package:todo_app/core/utils/app_utils.dart';

class ToDoApp extends StatelessWidget {
  final AppRouter appRouter;
  const ToDoApp({super.key,required this.appRouter});
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
        onGenerateRoute: appRouter.generateRoute,
        // routes: routes,
      ),
    );
  }
}
