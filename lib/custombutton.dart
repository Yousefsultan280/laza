import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cutombutton extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final Color? color;
 final void Function()? onTap;
  const Cutombutton({
    super.key,
    required this.title,
     this.icon,
    this.onTap,
    this.color
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap:onTap ,
      child: Container(
        decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(20)),
        height: 75,
        width: MediaQuery.of(context).size.width*.95,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,size: 30,),
            SizedBox(width: 5,),
            Text(title!,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23),),
          ],
        ),
      ),
    );
  }
}