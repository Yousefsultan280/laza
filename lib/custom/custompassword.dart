import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/helper/dio_helper.dart';

class Custompassword extends StatefulWidget {
   final TextEditingController controller;
  const Custompassword({super.key,required this.controller});

  @override
  State<Custompassword> createState() => _CustompasswordState();
}

class _CustompasswordState extends State<Custompassword> {
  bool obscureText= true;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 25),
          child: TextFormField(
            controller: widget.controller,
            obscureText: obscureText,
            obscuringCharacter: "*",
            decoration: InputDecoration(
              fillColor: Colors.blue[100],
              filled: true,
              hintText: "Password",
              prefixIcon: Icon(Icons.password),
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none
              ),
                suffix: InkWell(
                    onTap: (){
                      obscureText=!obscureText;
                      setState(() {});
                    },
                    child: Icon(obscureText? CupertinoIcons.eye_slash_fill:Icons.remove_red_eye))

            ),
          ),
        ),
      ],
    );
  }
}
