import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:get/get.dart';
import 'package:laza/view/signup_screen.dart';
import '../custom/custombutton.dart';
import 'login_screen.dart';

class GetStartScreen extends StatelessWidget {
  const GetStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "Let's Get Started",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            SizedBox(height: 100),
            FlutterSocialButton(
              onTap: () {},
              buttonType:
                  ButtonType.facebook, // Button type for different type buttons
            ),
            FlutterSocialButton(
              onTap: () {},
              buttonType:
                  ButtonType.email, // Button type for different type buttons
            ),
            FlutterSocialButton(
              onTap: () {},
              buttonType:
                  ButtonType.google, // Button type for different type buttons
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("already have an account? "),
                InkWell(
                  onTap: () {
                    Get.to(LoginScreen());
                  },
                  child: Text(
                    "LogIn",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color(0xff9775FA),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 10),
            Cutombutton(
              title: "Create Account",
              color: Color(0xff9775FA),
              onTap: () {
                Get.to(Signup());
              },
            ),
          ],
        ),
      ),
    );
  }
}
