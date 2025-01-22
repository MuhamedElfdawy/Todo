import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/app_color.dart';

class AddImg extends StatelessWidget {
  final void Function() onPress;
  const AddImg({super.key,required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: EdgeInsets.only(bottom: 8.h,top: 8.h),
        child: DottedBorder(
          padding: EdgeInsets.symmetric(
            vertical: 16.h,
          ),
          radius: Radius.circular(10.r),
          borderType: BorderType.RRect,
          strokeWidth: 1.w,
          color: AppColors.appColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.add_photo_alternate_outlined,
                color: AppColors.appColor,
              ),
              SizedBox(width: 8.w,),
              Text(
                'Add Img',
                style: TextStyle(
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.appColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
