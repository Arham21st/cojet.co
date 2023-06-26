
import 'package:cojet/utility/Dimensions.dart';
import 'package:flutter/material.dart';

import '../app_colors.dart';


double? width;
double? hight;
final ButtonStyle mainButton = ElevatedButton.styleFrom(
  
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(Dimensions.height15),),
    backgroundColor: AppColors.mainColor,
    elevation: Dimensions.height15/2,
    shadowColor: Colors.brown,
    fixedSize: Size(Dimensions.height20*15, Dimensions.height20*2)

);