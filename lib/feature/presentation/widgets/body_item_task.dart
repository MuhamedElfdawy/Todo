import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/app_color.dart';
import 'package:todo_app/core/utils/app_utils.dart';
import 'package:todo_app/feature/presentation/widgets/item_task_state.dart';

class BodyItemTask extends StatelessWidget {
  final void Function() onPress;
  const BodyItemTask({super.key, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                AppString.grocery,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 8.w,),
              const ItemTaskState(),
            ],
          ),
          SizedBox(
            height: 6.h,
          ),
          Text(
            'This application is designed for s...',
            style: TextStyle(fontSize: 14.sp, color: AppColors.hintColor),
          ),
          SizedBox(
            height: 6.h,
          ),
          Row(

            children: [
              const Icon(
                Icons.flag_outlined,
                size: 16,
                color: AppColors.appColor,
              ),
              SizedBox(
                width: 4.w,
              ),
              const Text(
                'Medium',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: AppColors.inprogressColor,
                ),
              ),
              SizedBox(width: 64.w,),
              const Text(
                '30/12/2022',
                style: TextStyle(
                  color: AppColors.hintColor
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
