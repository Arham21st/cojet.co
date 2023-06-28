
import 'package:cojet/utility/Dimensions.dart';
import 'package:flutter/material.dart';

import '../app_colors.dart';



final ButtonStyle mainButton = ElevatedButton.styleFrom(

    
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(Dimensions.height15),),
    foregroundColor: AppColors.mainColor,
    backgroundColor: AppColors.mainColor,
    surfaceTintColor: Colors.brown,
    elevation: Dimensions.height5,
    shadowColor: Colors.brown,
    fixedSize: Size(Dimensions.height20*15, Dimensions.height20*2.5)
    //maximumSize: Size(Dimensions.height20*15, Dimensions.height20*6)

);

final ButtonStyle smallButton = ElevatedButton.styleFrom(

    
    padding: EdgeInsets.all(0),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(Dimensions.height10),),
    foregroundColor: AppColors.mainColor,
    backgroundColor: AppColors.mainColor,
    surfaceTintColor: Colors.brown,
    elevation: Dimensions.height5,
    shadowColor: Colors.brown,
    fixedSize: Size(Dimensions.height20*5, Dimensions.height20*1)
    //maximumSize: Size(Dimensions.height20*15, Dimensions.height20*6)

);