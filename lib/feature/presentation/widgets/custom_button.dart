import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/app_color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isLoading = false, required this.text});

  final void Function()? onTap;
  final bool isLoading;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 24.h,bottom: 24.h),
        width: MediaQuery.of(context).size.width,
        height: 55.h,
        decoration: BoxDecoration(
          color: AppColors.appColor,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: isLoading
            ? const CircularProgressIndicator(
          color: Colors.white54,
        )
            :  Text(
          text ,
          style: TextStyle(
            color: Colors.white,
            fontSize: 19.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}