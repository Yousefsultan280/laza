import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Custompassword extends StatefulWidget {
  const Custompassword({super.key});

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
        Text("Password",style:TextStyle(fontWeight:FontWeight.bold,fontSize: 20) ,),
        Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border:BoxBorder.all(color: Colors.black,width: 2),
            ),
            child: TextFormField(
              validator: (value){
                if (value!.length<=8){
                  return "please password should be more than 8";
                }
              },
              keyboardType: TextInputType.phone,
              obscureText: obscureText,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                  errorStyle: TextStyle(height: 0),
                  border: InputBorder.none,
                  suffix: InkWell(
                      onTap: (){
                        obscureText=!obscureText;
                        setState(() {});
                      },
                      child: Icon(obscureText? CupertinoIcons.eye_slash_fill:Icons.remove_red_eye))

              ),
            ),
          ),
        ),
      ],
    );
  }
}
