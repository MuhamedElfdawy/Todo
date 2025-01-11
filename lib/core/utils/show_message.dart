import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/app_color.dart';

final contextKey = GlobalKey<NavigatorState>();

enum MessageType { success, failure}

void showMessage(String message, MessageType type){
  if(message.isNotEmpty){
    ScaffoldMessenger.of(contextKey.currentContext!).showSnackBar(
        SnackBar(
            content: Text(message,
              style: TextStyle(
                fontSize: 16.sp,
              ),
              textAlign: TextAlign.center,
            ),
            behavior: SnackBarBehavior.floating,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          backgroundColor: type == MessageType.success ?
          AppColors.appColor : Colors.red,
        ));
  }
}