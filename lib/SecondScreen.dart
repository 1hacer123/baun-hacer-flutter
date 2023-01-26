import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manavuyg/myscreen.dart';

class SecondScreen extends StatelessWidget {
  final String  productName;

  const SecondScreen({Key? key, required this.productName}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body:Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center (child:


        Text(productName,style:TextStyle(color:Colors.black87,fontSize: 35)))
      ],)

    );
  }
}


