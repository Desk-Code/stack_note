
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stack_note/utils/constant/text/text_constatnts.dart';
import 'package:stack_note/utils/constant/text/textstyle_constants.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({
    super.key,
    required this.image,
    this.title,
    required this.firstDetail,
    required this.secondDetail,
    this.button,
  });

  final String image;
  final String? title;
  final String firstDetail;
  final String secondDetail;
  final Widget? button;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50.h),
              _imageContainer(),
              SizedBox(height: 20.h),
              if (title != null)
                _animatedText(
                  title!,
                  textStyle: size30TextStyle(color: Colors.black),
                ),
              _animatedDescription(firstDetail),
              _animatedDescription(secondDetail),
              Animate(
                effects: const [
                  FadeEffect(
                    duration: Duration(seconds: 1),
                    delay: Duration(milliseconds: 500),
                  ),
                  SlideEffect(
                    begin: Offset(0, 0),
                    duration: Duration(seconds: 2),
                    curve: Curves.easeOut,
                  ),
                ],
                child: button ?? SizedBox(height: 20.h),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _imageContainer() {
    return Container(
      height: 350.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(40.r)),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 8,
            spreadRadius: 1,
            offset: Offset(4, 4),
          ),
          BoxShadow(
            color: Color(0xff071E03),
            blurRadius: 8,
            spreadRadius: 1,
            offset: Offset(-5, 1),
          ),
        ],
      ),
    ).animate().fade(duration: const Duration(seconds: 2));
  }

  /// Animated welcome text
  Widget _animatedText(String text, {required TextStyle textStyle}) {
    return Animate(
      effects: const [
        FadeEffect(
          duration: Duration(seconds: 1),
          delay: Duration(milliseconds: 500),
        ),
        SlideEffect(
          begin: Offset(0, 0),
          duration: Duration(seconds: 2),
          curve: Curves.easeOut,
        ),
      ],
      child: AppText(
        text: text,
        textStyle: textStyle,
      ),
    );
  }

  Widget _animatedDescription(String details) {
    return Animate(
      effects: const [
        FadeEffect(
          duration: Duration(milliseconds: 1200),
          delay: Duration(milliseconds: 500),
        ),
        SlideEffect(
          begin: Offset(0, 10),
          duration: Duration(milliseconds: 1000),
          curve: Curves.easeOut,
        ),
      ],
      child: Padding(
        padding: EdgeInsets.only(top: 8.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              text: "• ",
              textStyle: size12TextStyle(color: Colors.black),
            ),
            Expanded(
              child: AppText(
                text: details,
                textStyle: size12TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
