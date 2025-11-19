import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:laza/cubit/log&sign_state.dart';
import 'package:laza/cubit/signup_cubit.dart';
import 'package:laza/model/signup_model.dart';

import '../custom/custombutton.dart';
import '../custom/custompassword.dart';
import 'screen1.dart';
import 'login_screen.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _key = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void _signup() {
      var signup = SignupModel(
        nameController.text,
        emailController.text,
        passwordController.text,
      );
      context.read<SignupCubit>().signup(signup);

  }

  @override
  Widget build(BuildContext context) {

    return BlocListener<SignupCubit, Log_signState>(
      listener: (context, state) {
        if (state is Log_signError) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.msg)));
        }
        if (state is Log_signSuccess) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text("SignUp Successfully")));
          Get.to(()=>Screen1());
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: _key,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 100,
                    left: 40,
                    right: 40,
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text("Create your account"),
                    ],
                  ),
                ),
                SizedBox(height: 100),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: Container(
                          child: TextFormField(
                            controller: nameController,
                            decoration: InputDecoration(
                              fillColor: Colors.blue[100],
                              filled: true,
                              hintText: "Username",
                              prefixIcon: Icon(Icons.person),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),

                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: Container(
                          child: TextFormField(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              fillColor: Colors.blue[100],
                              filled: true,
                              hintText: "Email",
                              prefixIcon: Icon(Icons.email_outlined),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Custompassword(controller: passwordController),
                      SizedBox(height: 8),
                    ],
                  ),
                ),

                SizedBox(height: 30),
                BlocBuilder<SignupCubit, Log_signState>(
                  builder: (context, state) {
                    if (state is Log_signLoading) {
                      return Center(child: CircularProgressIndicator());
                    }
                    return Cutombutton(
                      title: "SignUp",
                      color: Colors.blue,
                      onTap: () {
                        _signup();
                      },
                    );
                  },
                ),

                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have account?  "),
                    InkWell(
                      onTap: () {
                        Get.to(()=>LoginScreen());
                      },
                      child: Text(
                        "LogIn",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
