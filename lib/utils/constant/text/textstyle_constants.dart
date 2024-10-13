import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

size30TextStyle({Color? color, FontWeight? fontWeight}) {
  return TextStyle(
    fontSize: 30.sp,
    color: color ?? Colors.black,
    fontWeight: fontWeight ?? FontWeight.w600,
  );
}

size12TextStyle({Color? color, FontWeight? fontWeight}) {
  return TextStyle(
    fontSize: 12.sp,
    color: color ?? Colors.black,
    fontWeight: fontWeight ?? FontWeight.normal,
  );
}
