import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:laza/laza/dio_helper.dart';
import 'laza/signup.dart';
import 'laza/splash_screen.dart';
void main()async {
  runApp(const MyApp());

    DioHelper.initialized();
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
