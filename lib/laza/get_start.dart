import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laza/laza/login_screen.dart';

import '../custombutton.dart';
class GetStartScreen extends StatefulWidget {
  const GetStartScreen({super.key});

  @override
  State<GetStartScreen> createState() => _GetStartScreenState();
}

class _GetStartScreenState extends State<GetStartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                child:
                Text("Let's Get Started",style:TextStyle(fontWeight:FontWeight.bold,fontSize: 30))),
            SizedBox(height: 200,),
            Cutombutton(icon: Icons.facebook,title:"Facebook",color: Colors.blue,),
            SizedBox(height: 20,),
            Cutombutton(icon: CupertinoIcons.airplane,title: "Twitter",color: Colors.blue[200],),
            SizedBox(height: 20,),
            Cutombutton(icon: Icons.g_mobiledata_outlined,title: "Google",color: Colors.deepOrange,),
            SizedBox(height: 200,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("already have an account? "),
                InkWell(
                    onTap: (){
                      Get.to(LoginScreen());
                    },
                    child: Text("LogIn",style: TextStyle(color: Colors.green),)),
              ],
            ),

            SizedBox(height: 10,),
            Cutombutton(title: "Create Account",color: Color(0xff9775FA),)

              ],
            ),
    )
    );
  }
}
