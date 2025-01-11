import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/app_color.dart';
import 'package:todo_app/core/utils/constants.dart';
import 'package:todo_app/feature/presentation/widgets/custom_button.dart';
import 'package:todo_app/feature/presentation/widgets/custom_text_button.dart';
import 'package:todo_app/feature/presentation/widgets/custom_text_form.dart';
import 'package:todo_app/features/auth/presentation/cubit/auth/auth_cubit.dart';

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
            BlocListener<AuthCubit, AuthState>(
              listener: (context, state) {
                if(state is AuthSuccess){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
                  Text('Login Success',
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: AppColors.appColor,
                  ));
                  Navigator.restorablePushReplacementNamed(context, Constants.homeScreen);
                } else if (state is AuthError){
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          state.msg,
                          style:  TextStyle(
                            fontSize: 16.sp,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        padding:  EdgeInsets.symmetric(
                            vertical:16.sp),
                        behavior: SnackBarBehavior.floating,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Colors.red,
                      ),
                  );
                }
              },
              child: CustomButton(
                text: 'Sign In',
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    context.read<AuthCubit>().login(
                        phone: phoneController.text,
                        password: passController.text);
                  }
                },
              ),
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
