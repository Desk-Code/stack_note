import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stack_note/modules/onboading/controller/onboading_controller.dart';
import 'package:stack_note/modules/onboading/widget/onboading_widget.dart';
import 'package:stack_note/utils/constant/color/color_constatnts.dart';
import 'package:stack_note/utils/constant/text/text_constatnts.dart';
import 'package:stack_note/utils/constant/text/textstyle_constants.dart';

class OnBoadingScreen extends StatelessWidget {
   OnBoadingScreen({super.key});
final OnBoadingController _onboadingController = Get.put(OnBoadingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _onboadingController.pageController,
              onPageChanged: (index) {
                _onboadingController.currentIndex.value = index;
              _onboadingController.jumpToPage(index);
              
              },
              children: [
                //
                //intro page 1 //ta
                //
                const IntroWidget(
                  image: "assets/images/intro1.jpg",
                  title: "Welcome to Farm For Rant",
                  firstDetail:
                      "Explore a vast selection of farmhouses with detailed descriptions, high-quality photos, and virtual tours.",
                  secondDetail:
                      "Filter properties by location, size, amenities, price, and availability.",
                ),
                //
                //intro page 2 //ta
                //
                const IntroWidget(
                  image: "assets/images/intro2.jpg",
                  title: "Need a brake?",
                  firstDetail:
                      "Read and write reviews to share your experiences and help others find the best farmhouses.",
                  secondDetail:
                      "Rate properties based on cleanliness, hospitality, location, and overall experience.",
                ),
                //
                //intro page 3 //ta
                //
                IntroWidget(
                  image: "assets/images/intro3.jpg",
                  firstDetail:
                      "Read and write reviews to share your experiences and help others find the best farmhouses.",
                  secondDetail:
                      "Rate properties based on cleanliness, hospitality, location, and overall experience.",
                  button: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.h, horizontal: 10),
                    child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            color: AppColors.lightGreen,
                            borderRadius: BorderRadius.circular(10)),
                        child: AppText(
                            text: "Begin",
                            textStyle: size12TextStyle(color: Colors.white))),
                  ),
                ),
              ],
            ),
          ),
          indicator()
        ],
      ),
      )
    );
  }

  Widget indicator() {
    return AspectRatio(
      aspectRatio: 1 / 0.2,
      child: Align(
        alignment: Alignment.center,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) =>  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Obx(
                     () =>  Container(
                        height: 10.h,
                        width: 10.w,
                        decoration: BoxDecoration(
                          color: index == _onboadingController.currentIndex.value
                              ? AppColors.lightGreen
                              : Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                )
      ),
    );
  }
      
      
      
      
      
  //     Scaffold(
  //       body: IntroWidget(
  //         image: "assets/images/intro1.jpg",
  //         firstDetail: "Learn More!",
  //         secondDetail: "wsdfghjk`fxfuhuaft hugskjuvhf7udjh wsjhgw7sa",
  //         title: "Learn More!",
  //       ),
  //     ),
  //   );
  // }
}
