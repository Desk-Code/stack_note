import 'dart:async';

import 'package:get/get.dart';

class SpalshScreenController extends GetxController {
  static void navigateToBoarding() {
    Timer(const Duration(seconds: 4), () {
      Get.off(() => const OnBoardingScreen());
    });
  }
}
