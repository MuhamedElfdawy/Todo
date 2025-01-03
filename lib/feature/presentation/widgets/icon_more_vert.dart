import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconMoreVert extends StatelessWidget {
  final void Function() onPress;
  const IconMoreVert({super.key, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPress,
      icon: const Icon(Icons.more_vert,),
      iconSize: 28.sp,
    );
  }
}
