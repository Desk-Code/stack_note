import 'package:flutter/material.dart';
import 'package:gif/gif.dart';
import 'package:stack_note/modules/splash/controller/splash.controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final GifController _pdfController = GifController(vsync: this);

  @override
  void initState() {
    SpalshScreenController.navigateToBoarding();
    super.initState();
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Gif(
          controller: _pdfController,
          autostart: Autostart.loop,
          image: const AssetImage(
            "assets/animation/pdfFlip.gif",
          ),
        ),
      ),
    );
  }
}
