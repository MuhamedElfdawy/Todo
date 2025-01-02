import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/app_color.dart';

class BodyProfileData extends StatelessWidget {
  final String title;
  final String content;
  const BodyProfileData({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.hintColor.withOpacity(0.8),
          ),
        ),
        SizedBox(height: 8.h,),
        Text(
          content,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.hintColor,
          ),
        ),
      ],
    );
  }
}
