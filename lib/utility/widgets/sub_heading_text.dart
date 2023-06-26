import 'package:cojet/utility/Dimensions.dart';
import 'package:flutter/material.dart';

class SubHeadingText extends StatelessWidget {
  Color color;
  final String text;
  double size;
  FontWeight fontWeight;
  SubHeadingText({super.key, 
  required this.text,
  this.color = Colors.white,
  this.size = 0,
  this.fontWeight = FontWeight.w500

  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size==0?Dimensions.font12/1.3:size,
        fontWeight: fontWeight,
        color: color,
        fontFamily: "Lato"
      ),
      
    );
  }
}