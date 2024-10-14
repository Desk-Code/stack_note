import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:stack_note/modules/home/widget/drawer_tile.dart';

Widget? drawerWidget(BuildContext context) => Drawer(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/svg/logo.svg', // Path to your SVG file
              height: 200.h, // Customize the size
              width: 200.w,
            ),
            const Divider(),
            commonDrawerTile(
              icon: Icons.home,
              name: 'Home',
              onTap: () {
                Get.back();
              },
            ),
            commonDrawerTile(
              icon: Icons.person,
              name: 'Profile',
              onTap: () {
                //
              },
            ),
            commonDrawerTile(
              icon: Icons.dashboard,
              name: 'Catagory',
              onTap: () {
                //
              },
            ),
            const Divider(),
            commonDrawerTile(
              icon: Icons.logout_outlined,
              name: "Log Out",
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => CupertinoAlertDialog(
                    title: const Text('Confirm'),
                    content: const Text('Are you sure to Log Out ?'),
                    actions: [
                      MaterialButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text('No'),
                      ),
                      MaterialButton(
                        onPressed: () {
                          //
                        },
                        child: const Text('Yes'),
                      ),
                    ],
                  ),
                );
              },
            ),
            const Divider(),
          ],
        ),
      ),
    );
