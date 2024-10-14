import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:stack_note/utils/constant/text/textstyle_constants.dart';
import 'package:stack_note/utils/widget/common_button.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController otpController = TextEditingController();

    const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
    const fillColor = Color.fromRGBO(243, 246, 249, 0);

    final defaultPinTheme = PinTheme(
      width: 50.w,
      height: 50.h,
      textStyle: size20TextStyle(),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),
    );
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 240.h,
            width: 360.w,
            margin: EdgeInsets.symmetric(horizontal: 27.w),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/authentication.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            "Please input the OTP sent to authenticate your identity now",
            style: size16TextStyle(),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15.h,
          ),
          Pinput(
            controller: otpController,
            defaultPinTheme: defaultPinTheme,
            separatorBuilder: (index) => const SizedBox(width: 23),
            length: 4,
            hapticFeedbackType: HapticFeedbackType.lightImpact,
            onCompleted: (pin) {
              log('Entered OTP: $pin');
            },
            onChanged: (value) {
              log('OTP changed: $value');
            },
            cursor: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 9),
                  width: 22,
                  height: 1,
                  color: focusedBorderColor,
                ),
              ],
            ),
            focusedPinTheme: defaultPinTheme.copyWith(
              decoration: defaultPinTheme.decoration!.copyWith(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: focusedBorderColor),
              ),
            ),
            submittedPinTheme: defaultPinTheme.copyWith(
              decoration: defaultPinTheme.decoration!.copyWith(
                color: fillColor,
                borderRadius: BorderRadius.circular(19),
                border: Border.all(color: focusedBorderColor),
              ),
            ),
            errorPinTheme: defaultPinTheme.copyBorderWith(
              border: Border.all(color: Colors.redAccent),
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          commonButton(
            context,
            buttonTitle: "Verify",
            onTap: () {},
          )
        ],
      ),
    );
  }
}
