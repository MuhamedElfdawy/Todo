import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/app_color.dart';

class FilterButton extends StatelessWidget {
  final String text;
  final bool isActive;
  const FilterButton({super.key, required this.text, this.isActive = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 12.w),
      margin: EdgeInsets.symmetric(vertical: 16.h,),
      decoration: BoxDecoration(
        color: isActive ?
        AppColors.appColor :
        AppColors.appColor.withOpacity(0.15),
        borderRadius: BorderRadius.all(Radius.circular(24.r)),
      ),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 16,
            fontWeight: isActive ?
            FontWeight.bold :
            FontWeight.w400,
            color: isActive ?
            AppColors.whiteColor :
                AppColors.hintColor
        ),
      ),
    );
  }
}

