import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/core/utils/app_color.dart';
import 'package:todo_app/core/utils/assets_manager.dart';
import 'package:todo_app/core/utils/constants.dart';
import 'package:todo_app/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), (){
      if(prefs.getString('accessToken') == null) {
        Navigator.restorablePushReplacementNamed(
            context, Constants.loginScreen);
      }else {
        Navigator.restorablePushReplacementNamed(
            context, Constants.homeScreen);
      }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appColor,
      body: Center(
        child: FadeInDownBig(child: Image.asset(ImgAssets.task)),
      ),
    );
  }
}
