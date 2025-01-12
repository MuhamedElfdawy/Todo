import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PhoneDropDown extends StatefulWidget {
  const PhoneDropDown({super.key});

  @override
  State<PhoneDropDown> createState() => _PhoneDropDownState();
}

class _PhoneDropDownState extends State<PhoneDropDown> {
  List<String> item = ['+20','+966','+971','+212','+213','964','+249','+967','+963','+962'];
  String selectedCountryCode = '+20';
  String selectedFlag = 'assets/flags/egypt.png';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedCountryCode,
          icon: const Icon(Icons.keyboard_arrow_down),
          items: [
            DropdownMenuItem(
              value: '+20',
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/Egypt.svg',
                    height: 24.h,
                    width: 24.w,
                  ),
                  SizedBox(width: 8.w),
                  const Text('+20'),
                ],
              ),
            ),
            DropdownMenuItem(
              value: '+1',
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/Egypt.svg',
                    height: 24.h,
                    width: 24.w,
                  ),
                  SizedBox(width: 8.w),
                  const Text('+1'),
                ],
              ),
            ),
            DropdownMenuItem(
              value: '+44',
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/Egypt.svg',
                    height: 24.h,
                    width: 24.w,
                  ),
                  SizedBox(width: 8.w),
                  const Text('+44'),
                ],
              ),
            ),
          ],
          onChanged: (String? newValue) {
            setState(() {
              selectedCountryCode = newValue!;
              if (newValue == '+20') {
                selectedFlag = 'assets/images/Egypt.svg';
              } else if (newValue == '+1') {
                selectedFlag = 'assets/images/Egypt.svg';
              } else if (newValue == '+44') {
                selectedFlag = 'assets/images/Egypt.svg';
              }
            });
          },
        ),
      ),
    );
  }
}
