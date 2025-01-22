import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/app_color.dart';
import 'package:todo_app/core/utils/assets_manager.dart';
import 'package:todo_app/core/utils/constants.dart';
import 'package:todo_app/feature/presentation/widgets/custom_drop_button.dart';
import 'package:todo_app/feature/presentation/widgets/custom_text_form.dart';
import 'package:todo_app/features/create/presentation/widgets/title_text.dart';
import 'package:todo_app/features/task/presentation/cubit/task_cubit.dart';

class BodyTaskDetailsScreen extends StatelessWidget {
  const BodyTaskDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskCubit, TaskState>(
      builder: (context, state) {
      if(state is TaskLoading){
        return const Center(child: CircularProgressIndicator(),);
      }
      else if(state is TaskLoaded){
        return Expanded(
          child: ListView(
            children: [
              // Image.network(
              //   'https://todo.iraqsapp.com/images/${state.details.img}',
              //   width: MediaQuery.of(context).size.width,
              //   errorBuilder: (context, error, stackTrace) => Image.asset(ImgAssets.grocery,
              //   width: MediaQuery.of(context).size.width,
              //   ),
              // ),
              Image.asset(ImgAssets.grocery),
              Text(
                state.details.title,
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                state.details.desc,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.hintColor,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              const TitleText(title: 'End Date'),
               CustomTextField(
                hint: state.details.date.substring(0,10),
                isSuffix: true,
                isPassword: false,

              ),
              const CustomDropDownButton(
                items: Constants.filters,
              ),
              const CustomDropDownButton(
                items: Constants.priority,
              ),
            ],
          ),
        );
      }
      else if (state is TaskError){
        return Dialog(
          child: Text(state.msg),
        );
      } else {
        return const Center(
          child: Text('No Data Available'),
        );
      }
    },);
  }
}
