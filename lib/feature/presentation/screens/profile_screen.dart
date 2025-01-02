import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/config/routes/app_routes.dart';
import 'package:todo_app/feature/presentation/widgets/custom_app_bar.dart';
import 'package:todo_app/feature/presentation/widgets/profile_data.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child:  Column(
            children: [
              CustomAppBar(
                title: 'Profile',
                arrowBack: (){
                  Navigator.pushNamed(context, Routes.homeRoute);
                },
              ),
              const ProfileData(
                title: 'NAME',
                content: 'Muhamed Fdawy',
              ),
              const ProfileData(
                title: 'Phone',
                content: '+20 100 803-6610',
              ),
              const ProfileData(
                title: 'Level',
                content: 'Senior',
              ),
              const ProfileData(
                title: 'Years of experience',
                content: '7 years',
              ),
              const ProfileData(
                title: 'Location',
                content: 'Sharkia, Egypt',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
