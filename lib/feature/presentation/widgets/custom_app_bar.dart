import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_app/core/utils/app_color.dart';
import 'package:todo_app/core/utils/assets_manager.dart';
import 'package:todo_app/feature/presentation/widgets/icon_more_vert.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final double fontSize;
  final bool isHomeScreen;
  final bool isTaskDetailsScreen;
  final void Function()? toProfile;
  final void Function()? logout;
  final void Function()? arrowBack;

  const CustomAppBar({
    super.key,
    required this.title,
    this.isHomeScreen = false,
    this.fontSize = 16,
    this.toProfile,
    this.logout,
    this.arrowBack,
    this.isTaskDetailsScreen = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          isHomeScreen
              ? const SizedBox()
              : IconButton(
                  onPressed: arrowBack,
                  icon: SvgPicture.asset(ImgAssets.arrowBack),
                ),
          Text(
            title,
            style: TextStyle(
              fontSize: fontSize.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          isHomeScreen
              ? Row(
                  children: [
                    IconButton(
                        onPressed: toProfile,
                        icon: const Icon(
                          Icons.account_circle_outlined,
                          size: 28,
                        )),
                    IconButton(
                        onPressed: logout,
                        icon: const Icon(
                          Icons.logout,
                          color: AppColors.appColor,
                          size: 28,
                        )),
                  ],
                )
              : isTaskDetailsScreen
                  ? IconMoreVert(
                      onPress: (value) {
                        if (value == 'edit') {
                          debugPrint('edit task');
                        } else if (value == 'delete') {
                          debugPrint('delete task');
                        }
                      },
                    )
                  : const SizedBox(),
        ],
      ),
    );
  }
}
