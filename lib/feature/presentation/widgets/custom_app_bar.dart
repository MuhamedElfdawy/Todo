import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_app/core/utils/app_color.dart';
import 'package:todo_app/core/utils/assets_manager.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final double fontSize;
  final bool isHomeScreen;

  const CustomAppBar(
      {super.key,
      required this.title,
      this.fontSize = 16,
      this.isHomeScreen = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        isHomeScreen ?
        const SizedBox() :
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(ImgAssets.arrowBack),
        ) ,
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
                  InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 14.r,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 12.r,
                        child: const Icon(
                          Icons.person_outline,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.logout,
                        color: AppColors.appColor,
                      )),
                ],
              )
            : const SizedBox(),
      ],
    );
  }
}
