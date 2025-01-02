import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/app_color.dart';
import 'package:todo_app/feature/presentation/widgets/body_profile_data.dart';

class ProfileData extends StatelessWidget {
  final String title;
  final String content;
  const ProfileData({super.key,required this.title,required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
      margin: EdgeInsets.symmetric(vertical: 6.h),
      decoration: BoxDecoration(
        color: AppColors.hintColor.withOpacity(0.08),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: BodyProfileData(title: title, content: content),
    );
  }
}
