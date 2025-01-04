import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/constants.dart';
import 'package:todo_app/feature/domain/entities/login_entity.dart';
import 'package:todo_app/feature/presentation/widgets/custom_button.dart';
import 'package:todo_app/feature/presentation/widgets/custom_text_button.dart';
import 'package:todo_app/feature/presentation/widgets/custom_text_form.dart';

class BodyLoginScreen extends StatefulWidget {
  const BodyLoginScreen({super.key});

  @override
  State<BodyLoginScreen> createState() => _BodyLoginScreenState();
}

class _BodyLoginScreenState extends State<BodyLoginScreen> {
  final phoneController = TextEditingController();
  final passController = TextEditingController();
  final formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: EdgeInsets.only(left: 24.w,right: 24.w,bottom: 32.h),
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
            SizedBox(
              height: 16.h,
            ),
            CustomTextField(
              controller: phoneController,
              hint: '123 456-7890',
              isPhoneNumber: true,
            ),
            CustomTextField(
              controller: passController,
              hint: 'Password...',
              isSuffix: true,
            ),
            CustomButton(
              text: 'Sign In',
              onTap: () {
                if (formKey.currentState!.validate()) {
                  final user = LoginEntity(
                    phone: phoneController.text,
                    password: passController.text,
                  );
                  // BlocProvider.of<LoginCubit>(context).login(user);
                  // context.read<LoginCubit>().login(user);
                  Navigator.pushNamed(context, Constants.homeScreen);
                }
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
      ),
    );
  }
}
