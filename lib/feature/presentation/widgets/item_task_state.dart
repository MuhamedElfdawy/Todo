import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/app_color.dart';

class ItemTaskState extends StatefulWidget {
  const ItemTaskState({super.key});

  @override
  State<ItemTaskState> createState() => _ItemTaskStateState();
}

class _ItemTaskStateState extends State<ItemTaskState> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 6.w),
      decoration: BoxDecoration(
        color: AppColors.waitingColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Text(
        'Waiting',
        style: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.waitingColor,
        ),
      ),
    );
  }
}
