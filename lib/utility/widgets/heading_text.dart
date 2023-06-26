

import 'package:flutter/material.dart';

import '../Dimensions.dart';

// ignore: must_be_immutable
class HeadingText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  FontWeight fontWeight;
  
  HeadingText({super.key,
          this.color = const Color.fromARGB(255, 10, 10, 10),
          required this.text,
          this.size=0,
          this.overFlow=TextOverflow.ellipsis,
          this.fontWeight= FontWeight.w500
          });

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        maxLines: 1,
        overflow: overFlow,
        style: TextStyle(
          color: color,
          fontSize: size==0?Dimensions.font26:size,
          fontWeight: fontWeight,
          fontFamily: "Heading"
        ),
        
    );
  }
}
