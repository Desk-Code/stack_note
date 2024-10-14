import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget commonDrawerTile({
  required IconData icon,
  required String name,
  required Function()? onTap,
}) =>
    ListTile(
      leading: Icon(icon),
      title: Text(name),
      onTap: onTap,
    );

Widget commonDrawerText({
  required String text,
  Color color = Colors.grey,
  double? size,
}) =>
    Padding(
      padding: EdgeInsets.only(left: 15.w, top: 5.h, bottom: 5.h),
      child: Text(
        text,
        style: TextStyle(color: color, fontSize: size ?? 14.sp),
      ),
    );
