import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/config/routes/app_routes.dart';
import 'package:todo_app/core/utils/assets_manager.dart';
import 'package:todo_app/feature/presentation/widgets/body_item_task.dart';
import 'package:todo_app/feature/presentation/widgets/icon_more_vert.dart';

class TaskItem extends StatefulWidget {
  const TaskItem({super.key});

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 12.h),
      margin: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            ImgAssets.grocery,
            height: 65.h,
            width: 80.w,
          ),
          BodyItemTask(
            onPress: () {
              Navigator.pushNamed(context, Routes.taskDetailsRoute);
            },
          ),
          const Spacer(),
          IconMoreVert(
            onPress: () {},
          ),
        ],
      ),
    );
  }
}
