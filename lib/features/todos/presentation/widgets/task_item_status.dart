import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/app_color.dart';
import 'package:todo_app/features/todos/domain/entities/todos_entity.dart';

class ItemTaskState extends StatelessWidget {
  final ToDosEntity todo;
  const ItemTaskState({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 6.w),
      decoration: BoxDecoration(
        color: todo.status.toLowerCase().contains('waiting'.toLowerCase()) ? AppColors.waitingColor.withOpacity(0.20) :
         todo.status.toLowerCase().contains('inprogress'.toLowerCase()) ? AppColors.inprogressColor.withOpacity(0.1) :
         todo.status.toLowerCase().contains('finished'.toLowerCase()) ? AppColors.finishedColor.withOpacity(0.1) : null,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Text(
        todo.status,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: todo.status.toLowerCase().contains('waiting') ? AppColors.waitingColor :
                  todo.status.toLowerCase().contains('inprogress') ? AppColors.inprogressColor :
                  todo.status.toLowerCase().contains('finished') ? AppColors.finishedColor : null,
        ),
      ),
    );
  }
}
