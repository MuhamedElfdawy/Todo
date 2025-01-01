import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/app_color.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final int maxLine;
  final void Function(String?)? onSaved;
  final void Function(String)? onChange;
  final bool isPassword;
  final bool isPhoneNumber;

  const CustomTextField({
    super.key,
    required this.hint,
    this.maxLine = 1,
    this.onSaved,
    this.onChange,
    this.isPassword = false,
    this.isPhoneNumber = false,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isPassHidden = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: TextFormField(
        onChanged: widget.onChange,
        onSaved: widget.onSaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Field is required';
          } else {
            return null;
          }
        },
        obscureText: widget.isPassword && isPassHidden,
        obscuringCharacter: '*',
        cursorColor: AppColors.appColor,
        maxLines: widget.maxLine,
        decoration: InputDecoration(
          prefix:widget.isPhoneNumber ?
          DropdownButton<String>(
            // iconSize: 15,
            value: '+12',
            underline: const SizedBox(),
            items: ['+20', '+1', '+12'].map((String code) {
              return DropdownMenuItem<String>(
                value: code,
                child: Text(code),
              );
            }).toList(),
            onChanged: (String? newValue) {

            },
          ) : null,
          suffixIcon: widget.isPassword
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
              : null,
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

/*
Row(
            children: [
            DropdownButton<String>(
              value: '+20',
              underline: const SizedBox(), // لإزالة الخط السفلي
              items: ['+20', '+1', '+44'].map((String code) {
                return DropdownMenuItem<String>(
                  value: code,
                  child: Text(code),
                );
              }).toList(),
              onChanged: (String? newValue) {
              },
            ),
          ],),
 */
