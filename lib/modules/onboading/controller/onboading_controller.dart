import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoadingController extends GetxController {
  PageController pageController = PageController();
  RxInt currentIndex = 0.obs;
   void jumpToPage(int index) {
    pageController.jumpToPage(index);
  }
}