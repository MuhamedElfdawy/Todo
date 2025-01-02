import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/app_color.dart';
import 'package:todo_app/core/utils/constants.dart';
import 'package:todo_app/feature/presentation/widgets/custom_app_bar.dart';
import 'package:todo_app/feature/presentation/widgets/task_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String activeButton = 'All';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.appColor,
        shape: const CircleBorder(),
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 32.sp,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(
                isHomeScreen: true,
                title: 'Home',
                fontSize: 24,
              ),
              Text(
                'My Tasks',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.hintColor,
                ),
              ),
              Row(
                children: Constants.filters
                    .map(
                      (filter) => GestureDetector(
                        onTap: () {
                          activeButton = filter ;
                          setState(() {});
                        },
                        child: TaskState(
                          text: filter,
                          isActive: activeButton == filter,
                        ),
                      ),
                    )
                    .toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
