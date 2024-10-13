import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stack_note/modules/login/controller/login.controller.dart';
import 'package:stack_note/modules/onboading/screen/onboading_screen.dart';

class NoteStash extends StatelessWidget {
  const NoteStash({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Note Stash',
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.white,
              fontFamily: GoogleFonts.poppins().fontFamily,
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const LoginScreen(),
            // home: const SplashScreen(),
          );
        });
  }
}
