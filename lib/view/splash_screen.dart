import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laza/view/splash_screen2.dart';
import '../custom/const.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Get.to(() => SplashScreen2());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        color: Color(0xff9775FA),
        child: Center(
          child: Image.asset(imagePath+"Logo.png")
          ),
        ),

    );
  }
}

