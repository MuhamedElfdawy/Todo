import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/app_color.dart';

class CustomDropDownButton extends StatefulWidget {
  final bool isRegister;
  final List<String> items;

  const CustomDropDownButton({
    super.key,
    this.isRegister = false,
    required this.items,
  });

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  String? selectedItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.h),
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      alignment: Alignment.center,
      height: 65.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: widget.isRegister
              ? Border.all(
                  color: AppColors.hintColor,
                  style: BorderStyle.solid,
                )
              : null,
          color:
              widget.isRegister ? null : AppColors.appColor.withOpacity(0.1)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          iconSize: 40.sp,
          isExpanded: true,
          icon: widget.isRegister
              ? const Icon(Icons.keyboard_arrow_down_outlined)
              : const Icon(
                  Icons.arrow_drop_down,
                  color: AppColors.appColor,
                ),
          hint: widget.isRegister ? const Text('Choose experience Level') : null,
          value: selectedItems,
          items: widget.items.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.appColor,
                ),
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            selectedItems = newValue;
            setState(() {});
          },
        ),
      ),
    );
  }
}
