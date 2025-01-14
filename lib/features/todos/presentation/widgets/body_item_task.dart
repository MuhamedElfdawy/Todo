import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/app_color.dart';
import 'package:todo_app/feature/presentation/widgets/icon_more_vert.dart';
import 'package:todo_app/features/todos/domain/entities/todos_entity.dart';
import 'package:todo_app/features/todos/presentation/widgets/item_task_state.dart';

class BodyItemTask extends StatelessWidget {
  final ToDosEntity todo;
  final void Function() onPress;
  const BodyItemTask({super.key, required this.todo, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              InkWell(
                onTap: onPress,
                child: Text(
                  todo.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
              ItemTaskState(todo: todo,),
              IconMoreVert(
                onPress: () {},
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 48.w),
            child: Text(
              todo.desc,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 14, color: AppColors.hintColor),
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Padding(
            padding: EdgeInsets.only(right: 48.w),
            child: Row(
              children: [
                const Icon(
                  Icons.flag_outlined,
                  size: 16,
                  color: AppColors.appColor,
                ),
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  todo.status,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.inprogressColor,
                  ),
                ),
                const Spacer(),
                Text(
                  todo.date.substring(0,10),
                  style: const TextStyle(
                      color: AppColors.hintColor
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
