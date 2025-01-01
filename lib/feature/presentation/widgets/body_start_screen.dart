import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/feature/presentation/widgets/custom_button.dart';

class BodyStartScreen extends StatefulWidget {
  const BodyStartScreen({super.key});

  @override
  State<BodyStartScreen> createState() => _BodyStartScreenState();
}

class _BodyStartScreenState extends State<BodyStartScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.w),
      child: Column(
        children: [
          Text(
            'Task Management &\n          '
                'To-Do List',
            style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 16.h,
          ),
          Text(
            'This productive tool is designed to help\n          '
                'you better manage your task\n             '
                'project-wise conveniently!',
            style: TextStyle(
                color: Colors.black54,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 16.h,),
          CustomButton(
            text: "Let's Start ->",
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
