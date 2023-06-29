import 'package:cojet/utility/Dimensions.dart';
import 'package:flutter/material.dart';

class SubHeadingText extends StatelessWidget {
  Color color;
  final String text;
  double size;
  FontWeight fontWeight;
  TextAlign? align;
  SubHeadingText({super.key, 
  required this.text,
  this.color = Colors.white,
  this.size = 0,
  this.fontWeight = FontWeight.w500,
  this.align,

  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: TextStyle(
        fontSize: size==0?Dimensions.font12/1.3:size,
        fontWeight: fontWeight,
        color: color,
        fontFamily: "Lato"
      ),
      
    );
  }
}