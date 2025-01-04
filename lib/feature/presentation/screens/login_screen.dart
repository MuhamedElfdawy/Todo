import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/assets_manager.dart';
import 'package:todo_app/feature/presentation/cubit/body_toggle_cubit/toggle_cubit.dart';
import 'package:todo_app/feature/presentation/widgets/body_login_screen.dart';
import 'package:todo_app/feature/presentation/widgets/body_start_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 480.h,
            child: Image.asset(ImgAssets.picture),
          ),
          BlocBuilder<BodyToggleCubit, bool>(
            builder: (context, showStartBody) =>
            showStartBody ?
            const BodyStartScreen() :
            const BodyLoginScreen(),
          ),
        ],
      ),
    );
  }
}
