import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/assets_manager.dart';
import 'package:todo_app/core/utils/constants.dart';
import 'package:todo_app/features/todos/domain/entities/todos_entity.dart';
import 'package:todo_app/features/todos/presentation/widgets/body_item_task.dart';

class TaskItem extends StatefulWidget {
  final ToDosEntity todo;
  const TaskItem({super.key, required this.todo});

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        children: [
          Image.asset(
            ImgAssets.grocery,
            height: 65.h,
            width: 80.w,
          ),
         BodyItemTask(
             todo: widget.todo,
             onPress: (){
               Navigator.pushNamed(context, Constants.taskDetailsScreen);
             }
         )
        ],
      ),
    );
  }
}