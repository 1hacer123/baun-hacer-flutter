import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  final String productName;
  final String url;
  final String price;
  const MyBox({
    Key? key,
    required this.productName,
    required this.url,
    required this.price,
  }):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment:MainAxisAlignment.center,
      children: [
        Container(height: 150,width: 150,

            decoration:BoxDecoration(
                color:Colors.pinkAccent,
                borderRadius: BorderRadius.all(Radius.circular(20.0)),//keskinlikten kurtardık
                boxShadow:[//gölgelendirme
                  BoxShadow(color:Colors.black,blurRadius :10.0,spreadRadius:10 ),
                ]

            ),
            child:Column(
              children: [
                SizedBox(height: 0,width: 10,),
                Text(productName,style:TextStyle(
                    color:Colors.black,fontSize: 30,
                    decoration: TextDecoration.underline)
                ),
                SizedBox(height: 20,),
                SizedBox(height: 50,
                child: Image.asset(url),),
                SizedBox(height: 20,),
                Text(price+" tl",style:TextStyle(
                    color:Colors.black,
                    fontSize: 15,
                    decoration: TextDecoration.underline))
              ],
            )

        )
      ],);
  }
}
