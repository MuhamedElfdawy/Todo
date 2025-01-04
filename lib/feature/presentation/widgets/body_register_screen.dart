import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/constants.dart';
import 'package:todo_app/feature/presentation/widgets/custom_button.dart';
import 'package:todo_app/feature/presentation/widgets/custom_drop_button.dart';
import 'package:todo_app/feature/presentation/widgets/custom_text_button.dart';
import 'package:todo_app/feature/presentation/widgets/custom_text_form.dart';


class BodyRegisterScreen extends StatefulWidget {
  const BodyRegisterScreen({super.key});

  @override
  State<BodyRegisterScreen> createState() => _BodyRegisterScreenState();
}

class _BodyRegisterScreenState extends State<BodyRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w,right: 24.w,bottom: 32.w),
      child: Column(
        children: [
          const CustomTextField(
            hint: 'Name...',
          ),
          const CustomTextField(
            hint: '123 456-7890',
            isPhoneNumber: true,
          ),
          const CustomTextField(
            hint: 'Years of experience...',
          ),
          const CustomDropDownButton(
            items: Constants.experience,
            isRegister: true,
          ),
          const CustomTextField(
            hint: 'Address...',
          ),
          const CustomTextField(
            hint: 'Password...',
            isSuffix: true,
          ),
          CustomButton(
            onTap: () {},
            text: 'Sign up',
          ),
          CustomTextButton(
            onPress: () {
              Navigator.pushNamed(context, Constants.loginScreen);
            },
            hintText: 'Already have any account?',
            buttonText: 'Sign in',
          ),
        ],
      ),
    );
  }
}
