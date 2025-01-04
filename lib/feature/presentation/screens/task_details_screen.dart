import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/constants.dart';
import 'package:todo_app/feature/presentation/widgets/body_task_details_screen.dart';
import 'package:todo_app/feature/presentation/widgets/custom_app_bar.dart';

class TaskDetailsScreen extends StatelessWidget {
  const TaskDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            children: [
              CustomAppBar(
                isTaskDetailsScreen: true,
                title: 'Task Details',
                arrowBack: (){
                  Navigator.pushNamed(context, Constants.homeScreen);
                },
              ),
              const BodyTaskDetailsScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
