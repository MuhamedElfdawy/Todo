import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/config/routes/app_routes.dart';
import 'package:todo_app/core/utils/app_color.dart';
import 'package:todo_app/feature/presentation/widgets/custom_app_bar.dart';
import 'package:todo_app/feature/presentation/widgets/filter_active_button.dart';
import 'package:todo_app/feature/presentation/widgets/floating_button.dart';
import 'package:todo_app/feature/presentation/widgets/task_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                isHomeScreen: true,
                title: 'Home',
                fontSize: 24.sp,
                toProfile: () {
                  Navigator.pushNamed(context, Routes.profileRoute);
                },
              ),
              Text(
                'My Tasks',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.hintColor,
                ),
              ),
              const FilterActiveButton(),
              Expanded(
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) => const TaskItem(),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: CustomFloatingButton(
        toAddTask: () {
          Navigator.pushNamed(context, Routes.addTaskRoute);
        },
      ),
    );
  }
}
