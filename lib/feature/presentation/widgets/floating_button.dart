import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/app_color.dart';

class CustomFloatingButton extends StatelessWidget {

  final void Function()? toAddTask;
  const CustomFloatingButton({super.key, this.toAddTask});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0.w, 775.h),
      child: Column(
        children: [
          FloatingActionButton(
            onPressed: () {},
            heroTag: 'qr code',
            backgroundColor: AppColors.whiteColor.withOpacity(0.4),
            shape: const CircleBorder(),
            child: Icon(
              Icons.qr_code,
              color: AppColors.appColor,
              size: 24.sp,
            ),
          ),
          SizedBox(height: 16.h,),
          FloatingActionButton(
            onPressed: toAddTask,
            heroTag: 'add task',
            backgroundColor: AppColors.appColor,
            shape:  const CircleBorder(),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 32.sp,
            ),
          ),
        ],
      ),
    );
  }
}
