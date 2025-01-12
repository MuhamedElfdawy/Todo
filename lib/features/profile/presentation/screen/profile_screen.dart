import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/constants.dart';
import 'package:todo_app/features/profile/presentation/widgets/body_profile_screen.dart';
import 'package:todo_app/feature/presentation/widgets/custom_app_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              CustomAppBar(
                title: 'Profile',
                arrowBack: () {
                  Navigator.pushNamed(context, Constants.homeScreen);
                },
              ),
               const BodyProfileScreen()
            ],
          ),
        ),
      ),
    );
  }
}
