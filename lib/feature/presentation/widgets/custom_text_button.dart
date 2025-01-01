import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/app_color.dart';

class CustomTextButton extends StatelessWidget {
  final String hintText;
  final String buttonText;
  const CustomTextButton({super.key, required this.hintText, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          hintText,
          style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: Colors.black45),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.appColor,
            ),
          ),
        ),
      ],
    );
  }
}
