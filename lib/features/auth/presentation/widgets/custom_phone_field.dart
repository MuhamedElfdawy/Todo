import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:todo_app/core/utils/app_color.dart';

class CustomPhoneField extends StatelessWidget {
  final void Function(PhoneNumber) onChange;
  const CustomPhoneField({super.key, required this.onChange,});

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      onChanged: onChange,
      decoration: InputDecoration(
        hintText: '123 456-7890',
        hintStyle: const TextStyle(color: AppColors.hintColor),
        border: OutlineInputBorder(
          borderSide: const BorderSide(),
          borderRadius: BorderRadius.circular(10.r),
        ),

      ),
    );
  }
}
