import 'package:flutter/material.dart';
import 'package:todo_app/core/utils/app_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.appColor,
      body: Center(
        child: Text('Tasky',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
