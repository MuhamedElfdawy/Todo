import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/app_color.dart';
import 'package:todo_app/core/utils/app_utils.dart';
import 'package:todo_app/core/utils/assets_manager.dart';
import 'package:todo_app/core/utils/constants.dart';
import 'package:todo_app/feature/presentation/widgets/custom_drop_button.dart';
import 'package:todo_app/feature/presentation/widgets/custom_text_form.dart';
import 'package:todo_app/feature/presentation/widgets/title_text.dart';

class BodyTaskDetailsScreen extends StatelessWidget {
  const BodyTaskDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Image.asset(
            ImgAssets.grocery,
            width: MediaQuery.of(context).size.width,
          ),
          Text(
            AppString.grocery,
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            'This application is designed for super shops. By using this application they can enlist all their products in one place and can deliver. Customers will get a one-stop solution for their daily shopping.',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.hintColor,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          const TitleText(title: 'End Date'),
          const CustomTextField(
            hint: '30 june, 2022',
            isSuffix: true,
            isPassword: false,

          ),
          const CustomDropDownButton(
              items: Constants.filters,

          ),
          const CustomDropDownButton(
              items: Constants.priority,
          ),
        ],
      ),
    );
  }
}
