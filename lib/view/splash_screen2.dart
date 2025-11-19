import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:laza/view/get_start.dart';

import '../cubit/splach_cubit.dart';
import '../custom/const.dart';
import '../l10n/app_localizations.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  Widget build(BuildContext context) {
    var lang = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: Color(0xff9775FA),
      body: Stack(
        children: [
          Image.asset(imagePath + "person.png"),
          Positioned(
            bottom: 15,
            right: 5,
            left: 5,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              height: 244,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      lang.lookGoodFeelGood,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    lang.createYourIndividualAndUniqueStyle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BlocBuilder<GenderSelection, bool>(
                        builder: (context, state) {
                          return InkWell(
                            onTap: () {
                              context.read<GenderSelection>().toggleGender();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: state ? Color(0xff9775FA) : Colors.grey,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: 150,
                              height: 75,
                              child: Center(
                                child: Text(
                                  lang.women,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(width: 10),
                      BlocBuilder<GenderSelection, bool>(
                        builder: (context, state) {
                          return InkWell(
                            onTap: () {
                              context.read<GenderSelection>().toggleGender();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: state ? Colors.grey : Color(0xff9775FA),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: 150,
                              height: 75,
                              child: Center(
                                child: Text(
                                  lang.men,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      Get.to(GetStartScreen());
                    },
                    child: Text(lang.skip),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
