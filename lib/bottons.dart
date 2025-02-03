import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final color;
  final textColor;
  final String buttonText;
  final buttontapped;

  MyButton({this.color, this.textColor,required this.buttonText, this.buttontapped});

  @override
  Widget build(BuildContext context) {
    return Container(
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
    height: 80,
    width: 85,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: color,foregroundColor: Colors.white),
        onPressed: ()=>buttontapped, 
        child: Text(buttonText,
          style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),)
    );
  }
}
