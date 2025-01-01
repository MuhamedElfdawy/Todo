import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/assets_manager.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(ImgAssets.picture),
          Text('Task Management &\n          '
              'To-Do List',
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold
          ),
          ),
          SizedBox(height: 16.h,),
          Text('This productive tool is designed to help\n          '
                           'you better manage your task\n             '
                            'project-wise conveniently!',
          style: TextStyle(
            color: Colors.black54,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400
          ),
          ),

        ],
      ),
    );
  }
}
