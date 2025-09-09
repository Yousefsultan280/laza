import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../custombutton.dart';
import '../custompassword.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _key=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading:
        Icon(Icons.arrow_back,size: 40,),),
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
                        Text("Welcome",style:TextStyle(fontWeight:FontWeight.bold,fontSize: 30))),
                    Text("Please enter your data to continue")
                  ],
                ),
              ),
              SizedBox(height: 200,),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
          
                  children: [
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
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Row(
                        children: [
                          Text("Forget Password?",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
          
              SizedBox(height: 30,),
              InkWell(
                onTap: (){
                  _key.currentState!.validate();
                  setState(() {});
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: Cutombutton(title: "Login", onTap: (){}),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


}


