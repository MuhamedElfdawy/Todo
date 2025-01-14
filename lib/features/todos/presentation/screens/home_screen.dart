import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/network/token.dart';
import 'package:todo_app/core/utils/app_color.dart';
import 'package:todo_app/core/utils/constants.dart';
import 'package:todo_app/feature/presentation/widgets/custom_app_bar.dart';
import 'package:todo_app/feature/presentation/widgets/filter_active_button.dart';
import 'package:todo_app/feature/presentation/widgets/floating_button.dart';
import 'package:todo_app/features/todos/presentation/widgets/todo_list_view.dart';

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
              fontSize: 24,
              toProfile: () {
                Navigator.pushNamed(context, Constants.profileScreen);
              },
              logout: () {
                clearToken();
                Navigator.restorablePushReplacementNamed(context, Constants.loginScreen);
              },
                            ),
              const Text(
                'My Tasks',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.hintColor,
                ),
              ),
              const FilterActiveButton(),
              const ToDoListView(),
            ],
          ),
        ),
      ),
      floatingActionButton: CustomFloatingButton(
        toAddTask: () {
          Navigator.pushNamed(context, Constants.addTaskScreen);
        },
      ),
    );
  }
}
