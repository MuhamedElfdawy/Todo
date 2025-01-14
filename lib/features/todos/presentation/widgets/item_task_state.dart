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
      padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 6.w),
      decoration: BoxDecoration(
        color: AppColors.waitingColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Text(
        todo.status,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: AppColors.waitingColor,
        ),
      ),
    );
  }
}
