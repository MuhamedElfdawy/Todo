import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/app_color.dart';
import 'package:todo_app/core/utils/constants.dart';
import 'package:todo_app/feature/presentation/widgets/custom_button.dart';
import 'package:todo_app/feature/presentation/widgets/custom_drop_button.dart';
import 'package:todo_app/feature/presentation/widgets/custom_text_button.dart';
import 'package:todo_app/feature/presentation/widgets/custom_text_form.dart';
import 'package:todo_app/features/auth/presentation/cubit/auth/auth_cubit.dart';


class BodyRegisterScreen extends StatefulWidget {
  const BodyRegisterScreen({super.key});

  @override
  State<BodyRegisterScreen> createState() => _BodyRegisterScreenState();
}

class _BodyRegisterScreenState extends State<BodyRegisterScreen> {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final experienceController = TextEditingController();
  final levelController = TextEditingController();
  final addressController = TextEditingController();
  String? selectedLevel;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: EdgeInsets.only(left: 24.w,right: 24.w,bottom: 32.w),
        child: Column(
          children: [
            CustomTextField(
              controller: nameController,
              hint: 'Name...',
            ),
             CustomTextField(
               controller: phoneController,
              hint: '123 456-7890',
              isPhoneNumber: true,
            ),
            CustomTextField(
              controller: experienceController,
              hint: 'Years of experience...',
            ),
            CustomDropDownButton(
              items: Constants.experience,
              isRegister: true,
              onChange: (value) {
                selectedLevel = value!;
              },
            ),
            CustomTextField(
              controller: addressController,
              hint: 'Address...',
            ),
            CustomTextField(
              controller: passwordController,
              hint: 'Password...',
              isSuffix: true,
            ),
            BlocListener<AuthCubit, AuthState>(
                listener: (context, state) {
                  if(state is AuthSuccess){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Sign up Success',
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
                  }else if(state is AuthError){
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
                  text: 'Sign up',
                  onTap: () {
                    if(formKey.currentState!.validate()){
                      context.read<AuthCubit>().register(
                        name: nameController.text,
                        phone: phoneController.text,
                        password: passwordController.text,
                        experience: int.parse(experienceController.text),
                        address: addressController.text,
                        level: selectedLevel!,
                      );
                    }
                  },
                ),
            ),
            CustomTextButton(
              onPress: () {
                Navigator.restorablePushReplacementNamed(context, Constants.loginScreen);
              },
              hintText: 'Already have any account?',
              buttonText: 'Sign in',
            ),
          ],
        ),
      ),
    );
  }
}
