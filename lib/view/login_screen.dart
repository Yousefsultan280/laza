import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:laza/cubit/log&sign_state.dart';
import 'package:laza/custom/custombutton.dart';
import 'package:laza/model/login_model.dart';
import 'package:laza/view/signup_screen.dart';
import '../cubit/login_cubit.dart';
import '../custom/custompassword.dart';
import 'screen1.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _key = GlobalKey<FormState>();
  TextEditingController emailcontoler = TextEditingController();
  TextEditingController passcontoler = TextEditingController();

  void _login() {
    var login = LoginModel(emailcontoler.text, passcontoler.text);
    context.read<LoginCubit>().login(login);
  }

  @override
  Widget build(BuildContext context) {

    return BlocListener<LoginCubit,Log_signState>(
      listener: (context, state) {
        if (state is Log_signError) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.msg)));
        }
        if (state is Log_signSuccess) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text("Login Successfully")));
          Get.to(() =>Screen1());

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
                          "Welcome",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Text("Please enter your data to continue"),
                    ],
                  ),
                ),
                SizedBox(height: 200),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: TextFormField(
                          controller: emailcontoler,
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: Colors.red,

                          decoration: InputDecoration(
                            fillColor: Colors.blue[100],
                            filled: true,
                            prefixIcon: Icon(Icons.email_outlined),
                            hintText: "Email",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Custompassword(controller: passcontoler),
                      SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(left: 275),
                        child: Text(
                          "Forget Password?",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 30),
                BlocBuilder<LoginCubit, Log_signState>(
                  builder: (context, state) {
                    if (state is Log_signLoading) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    return Cutombutton(
                      title: "Login",
                      color: Colors.blue,
                      onTap: () {
                        _login();
                      },
                    );
                  },
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't Have Account? "),
                    InkWell(
                      onTap: () {
                        Get.to(()=>Signup());
                      },
                      child: Text(
                        "SignIn",
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
  }
}
