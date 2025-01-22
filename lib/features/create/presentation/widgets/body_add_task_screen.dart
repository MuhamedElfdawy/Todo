import 'package:flutter/material.dart';
import 'package:todo_app/core/utils/constants.dart';
import 'package:todo_app/features/create/presentation/widgets/add_image.dart';
import 'package:todo_app/feature/presentation/widgets/custom_button.dart';
import 'package:todo_app/feature/presentation/widgets/custom_drop_button.dart';
import 'package:todo_app/feature/presentation/widgets/custom_text_form.dart';
import 'package:todo_app/features/create/presentation/widgets/title_text.dart';

class BodyAddTaskScreen extends StatelessWidget {
  const BodyAddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          AddImg(
            onPress: () {},
          ),
          const TitleText(
            title: 'Task title',
          ),
          const CustomTextField(
            hint: 'Enter title here...',
          ),
          const TitleText(
            title: 'Task Description',
          ),
          const CustomTextField(
            hint: 'Enter description here...',
            maxLine: 5,
          ),
          const TitleText(
            title: 'Priority',
          ),
          const CustomDropDownButton(
            items: Constants.priority,
          ),
          const TitleText(title: 'Due date'),
          const CustomTextField(
            hint: 'choose due date...',
            isSuffix: true,
            isPassword: false,
          ),
          CustomButton(
            text: 'Add task',
            onTap: () {},
          )
        ],
      ),
    );
  }
}
