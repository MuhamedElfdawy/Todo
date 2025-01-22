import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/app_color.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final int maxLine;
  final void Function(String)? onChange;
  final bool isSuffix;
  final bool isPassword;
  final TextEditingController? controller;

  const CustomTextField({
    super.key,
    required this.hint,
    this.maxLine = 1,
    this.onChange,
    this.isSuffix = false,
    this.isPassword = true,
    this.controller,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isPassHidden = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: TextFormField(
        controller: widget.controller,
        onChanged: widget.onChange,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Field is required';
          } else {
            return null;
          }
        },
        obscureText: widget.isSuffix && widget.isPassword && isPassHidden,
        obscuringCharacter: '*',
        cursorColor: AppColors.appColor,
        maxLines: widget.maxLine,
        decoration: InputDecoration(
          suffixIcon: widget.isSuffix ? widget.isPassword
              ? IconButton(
            onPressed: () {
              isPassHidden = !isPassHidden;
              setState(() {});
            },
            icon: Icon(
              isPassHidden
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
              color: Colors.black26,
            ),
          )
              : IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.calendar_month_outlined,
              color: AppColors.appColor,
            ),
          ) : null,
          hintText: widget.hint,
          hintStyle: const TextStyle(color: AppColors.hintColor),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(AppColors.appColor),
        ),
      ),
    );
  }
}

OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(
      color: color ?? AppColors.hintColor,
    ),
  );
}