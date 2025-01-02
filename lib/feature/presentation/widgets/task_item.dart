import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/assets_manager.dart';
import 'package:todo_app/feature/presentation/widgets/body_item_task.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 12.h),
      margin: EdgeInsets.only(bottom: 12.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            ImgAssets.grocery,
            height: 65.h,
            width: 80.w,
          ),
          const BodyItemTask(),
          Icon(
            Icons.more_vert,
            size: 28.sp,
          ),
        ],
      ),
    );
  }
}
