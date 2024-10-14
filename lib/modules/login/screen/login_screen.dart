import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:stack_note/modules/login/screen/verification_screen.dart';
import 'package:stack_note/utils/constant/text/textstyle_constants.dart';
import 'package:stack_note/utils/widget/common_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 240.h,
            width: 288.w,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/login.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 13,
              vertical: 5,
            ),
            child: Text(
              "Hello!",
              style: size30TextStyle(),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 13,
              vertical: 5,
            ),
            child: Text(
              "Enter your phone number to receive a verification code",
              style: size14TextStyle(),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(13),
            child: IntlPhoneField(
              decoration: const InputDecoration(border: OutlineInputBorder()),
              initialCountryCode: 'IN',
              keyboardType: TextInputType.number,
              onChanged: (value) {
                //
                log(value.completeNumber.toString());
                //
              },
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          commonButton(
            context,
            onTap: () {
              Get.to(() => const VerificationScreen());
            },
            buttonTitle: "Get OTP",
          ),
        ],
      ),
    );
  }
}
