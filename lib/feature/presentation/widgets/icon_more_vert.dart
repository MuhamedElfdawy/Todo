import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconMoreVert extends StatelessWidget {
  final void Function(String)? onPress;

  const IconMoreVert({super.key, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: const Icon(Icons.more_vert),
      onSelected: onPress,
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<String>>[
          const PopupMenuItem(
              value: 'edit',
              child: Text(
                'Edit',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          const PopupMenuDivider(),
          const PopupMenuItem(
              value: 'delete',
              child: Text('Delete',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.red))),
        ];
      },
      offset: Offset(-30.w, 30.h),
      elevation: 10,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide.none
      ),
    );
  }
}