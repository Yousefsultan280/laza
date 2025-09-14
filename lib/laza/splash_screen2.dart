import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laza/laza/get_start.dart';

import 'const.dart';
import 'login_screen.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff9775FA),
      body: Stack(
        children: [
                    Image.asset(imagePath+"person.png"),
                  Positioned(
                    bottom: 15,
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        height: 244,
                        width: 420,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 10),
                              child: Text("Look Good,Feel Good",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 31),
                              child: Text("create your individual and unique style and look amazing every day",textAlign: TextAlign.center,),
                            ),
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.symmetric(horizontal: 28)),
                                Container(
                                  decoration: BoxDecoration(color: Color(0xff9775FA),borderRadius: BorderRadius.circular(20)),
                                  width: 150,
                                  height: 75,
                                  child: Center(
                                    child: Text("Womens",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(20)),
                                  width: 150,
                                  height: 75,
                                  child: Center(
                                    child: Text("Men",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 10,),
                            InkWell(
                                onTap: (){
                                  Get.to(GetStartScreen());
                                },
                                child: Text("Skip"))
                          ],
                        )
                      )
                  )
        ],
      ),
    );
  }
}
