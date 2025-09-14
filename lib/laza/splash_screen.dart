import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laza/laza/splash_screen2.dart';
import 'const.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
//   Timer? timer;
// @override
//   void initState() {
//     timer=Timer.periodic(Duration(seconds: 3), (timer){
//
//     });
//     super.initState();
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        color: Color(0xff9775FA),
        child: InkWell(
          onTap: (){

            setState(() {
              Get.to(SplashScreen2());
            });
          },
          child: Center(
            child: Image.asset(imagePath+"Logo.png")
            ),
          ),
        ),

    );
  }
}

