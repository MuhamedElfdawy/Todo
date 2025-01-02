import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/assets_manager.dart';
import 'package:todo_app/feature/presentation/widgets/body_login_screen.dart';
import 'package:todo_app/feature/presentation/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 500.h,
            child: Image.asset(ImgAssets.picture),
          ),
          const BodyLoginScreen()
        ],
      ),
    );
  }
}
