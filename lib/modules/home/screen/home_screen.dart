import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stack_note/modules/home/widget/drawer_widget.dart';
import 'package:stack_note/utils/constant/color/color_constatnts.dart';
import 'package:stack_note/utils/constant/text/textstyle_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.button,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: Icon(
              Icons.menu_open,
              size: 30.sp,
              color: Colors.white,
            ),
          );
        }),
        actions: [
          IconButton(
            onPressed: () {
              // Get.to(() => );
            },
            icon: Icon(
              Icons.person,
              size: 30.sp,
              color: Colors.white,
            ),
          ),
        ],
        title: Text(
          'Stack Note',
          style: size18TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      drawer: drawerWidget(context),
      body: const Center(
        child: Text(
          "Home Page",
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}
