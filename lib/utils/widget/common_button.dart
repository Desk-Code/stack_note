import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stack_note/utils/constant/color/color_constatnts.dart';
import 'package:stack_note/utils/constant/text/textstyle_constants.dart';

Widget commonButton(
  BuildContext context, {
  required String buttonTitle,
  required Function()? onTap,
  Color? textColor = Colors.white,
}) =>
    GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40.h,
        margin: const EdgeInsets.symmetric(horizontal: 13),
        decoration: BoxDecoration(
          color: AppColors.button,
          borderRadius: BorderRadius.circular(7),
          border: Border.all(
            color: Colors.black,
            width: 0.2,
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          buttonTitle,
          style: size18TextStyle(color: Colors.white),
        ),
      ),
    );
