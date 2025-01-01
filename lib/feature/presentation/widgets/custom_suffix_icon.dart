import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PhoneFieldWithCountryCode extends StatefulWidget {
  const PhoneFieldWithCountryCode({super.key});

  @override
  _PhoneFieldWithCountryCodeState createState() =>
      _PhoneFieldWithCountryCodeState();
}

class _PhoneFieldWithCountryCodeState extends State<PhoneFieldWithCountryCode> {
  String selectedCountryCode = '+20';
  String selectedFlag = 'assets/flags/egypt.png'; // صورة علم مصر

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Field Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextFormField(
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            hintText: '123 456-7890',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            prefixIcon: Padding(
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
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: SvgPicture.asset(
                              'assets/images/Egypt.svg', // صورة علم مصر
                            ),
                          ),
                          SizedBox(width: 8),
                          Text('+20'),
                        ],
                      ),
                    ),
                    DropdownMenuItem(
                      value: '+1',
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/tasky.png', // صورة علم أمريكا
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(width: 8),
                          Text('+1'),
                        ],
                      ),
                    ),
                    DropdownMenuItem(
                      value: '+44',
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/tasky.png', // صورة علم بريطانيا
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(width: 8),
                          Text('+44'),
                        ],
                      ),
                    ),
                  ],
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedCountryCode = newValue!;
                      // تحديث العلم بناءً على الكود
                      if (newValue == '+20') {
                        selectedFlag = 'assets/images/tasky.png';
                      } else if (newValue == '+1') {
                        selectedFlag = 'assets/images/tasky.png';
                      } else if (newValue == '+44') {
                        selectedFlag = 'assets/images/tasky.png';
                      }
                    });
                  },
                ),
              ),
            ),
            prefixIconConstraints: BoxConstraints(
              minWidth: 100, // عرض الحد الأدنى لمربع العلم والكود
            ),
          ),
        ),
      ),
    );
  }
}


