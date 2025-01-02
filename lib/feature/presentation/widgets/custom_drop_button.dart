import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/app_color.dart';

class CustomDropDownButton extends StatefulWidget {
  const CustomDropDownButton({super.key});

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  List<String> items = [
    'Beginner',
    'Junior',
    'Mid-Level',
    'Senior',
    'Lead',
  ];

  String? selectedItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.h),
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      alignment: Alignment.center,
      height: 65.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: AppColors.hintColor,style: BorderStyle.solid),
      ),
      child: DropdownButton(
        iconSize: 40.sp,
        isExpanded: true,
        icon: const Icon(Icons.keyboard_arrow_down_outlined),
        hint: const Text('Choose experience Level'),
        value: selectedItems,
        items: items.map((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(item),
          );
        }).toList(),
        onChanged: (String? newValue) {
          selectedItems = newValue ;
          setState(() {});
        },
      ),
    );
  }
}
