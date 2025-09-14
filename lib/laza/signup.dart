import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../custombutton.dart';
import '../custompassword.dart';
import '../mainscreen/screen1.dart';
import 'get_start.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _key=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  SingleChildScrollView(
        child: Form(
          key: _key,

          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.only(top: 100,left: 40,right: 40),
                child: Column(
                  children: [
                    Container(
                        child:
                        Text("SignUp",style:TextStyle(fontWeight:FontWeight.bold,fontSize: 30))),

                  ],
                ),
              ),
              SizedBox(height: 200,),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text("Name",style:TextStyle(fontWeight:FontWeight.bold,fontSize: 20) ,),
                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: Container(
                        padding: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border:BoxBorder.all(color: Colors.black,width: 2),
                        ),
                        child: TextFormField(
                          validator: (value){
                            if(value!.isEmpty){
                              return "please enter your name ";
                            }
                          },

                          decoration: InputDecoration(

                            border: InputBorder.none,

                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),

                    Text("Email",style:TextStyle(fontWeight:FontWeight.bold,fontSize: 20) ,),
                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: Container(
                        padding: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border:BoxBorder.all(color: Colors.black,width: 2),
                        ),
                        child: TextFormField(
                          validator: (value){
                            if(!value!.contains("@")){
                              return "please email should be contain @";
                            }
                          },
                          keyboardType: TextInputType.emailAddress,

                          decoration: InputDecoration(

                            border: InputBorder.none,

                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Custompassword(),
                    SizedBox(height: 8,),

                  ],
                ),
              ),

              SizedBox(height: 30,),


              InkWell(
                onTap: (){

                  setState(() {});
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: Cutombutton(title: "SignUp",color: Colors.blue, onTap: (){
                    if(_key.currentState!.validate()){
                    Get.to(Screen1());
                    }

                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );;
  }
}
