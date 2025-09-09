import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../custombutton.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
        Icon(Icons.arrow_back,size: 40,),),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
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
              Text("already have an account? Signin"),
              SizedBox(height: 10,),
              Cutombutton(title: "Create Account",color: Color(0xff9775FA),)

                ],
              ),
        ),
    )
    );
  }
}
