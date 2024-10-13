import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:stack_note/utils/constant/text/textstyle_constants.dart';
import 'package:stack_note/utils/widget/common_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 240.h,
            width: 288.w,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/login_screen.jpg"),
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
              "Enter your phone number to receive a verification code",
              style: size14TextStyle(),
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
              //
            },
            buttonTitle: "Get OTP",
          ),
          Row(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Do You Have an Not Account ?',
                style: size14TextStyle(),
              ),
              TextButton(
                onPressed: () {
                  //Get.to(() => Screen());
                },
                child: Text(
                  'Register',
                  style: size15TextStyle(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
