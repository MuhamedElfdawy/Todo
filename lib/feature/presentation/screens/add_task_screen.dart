import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/config/routes/app_routes.dart';
import 'package:todo_app/feature/presentation/widgets/body_add_task_screen.dart';
import 'package:todo_app/feature/presentation/widgets/custom_app_bar.dart';


class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              CustomAppBar(
                title: 'Add new task',
                arrowBack: () {
                  Navigator.pushNamed(context, Routes.homeRoute);
                },
              ),
              const BodyAddTaskScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
