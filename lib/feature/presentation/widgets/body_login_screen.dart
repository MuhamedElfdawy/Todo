import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/constants.dart';
import 'package:todo_app/feature/presentation/widgets/custom_button.dart';
import 'package:todo_app/feature/presentation/widgets/custom_text_button.dart';
import 'package:todo_app/feature/presentation/widgets/custom_text_form.dart';

class BodyLoginScreen extends StatefulWidget {
  const BodyLoginScreen({super.key});

  @override
  State<BodyLoginScreen> createState() => _BodyLoginScreenState();
}

class _BodyLoginScreenState extends State<BodyLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login',
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.h,),
          const CustomTextField(
            hint: '123 456-7890',
            isPhoneNumber: true,
          ),
          const CustomTextField(
            hint: 'Password...',
            isSuffix: true,
          ),
          CustomButton(
            text: 'Sign In',
            onTap: () {
              Navigator.pushNamed(context, Constants.homeScreen);
            },
          ),
          CustomTextButton(
            onPress: () {
              Navigator.pushNamed(context, Constants.registerScreen);
            },
            hintText: 'Didn’t have any account?',
            buttonText: 'Sign Up here',
          )
        ],
      ),
    );
  }
}
