
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

    
    
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(Dimensions.height10),),
    foregroundColor: AppColors.mainColor,
    backgroundColor: AppColors.mainColor,
    surfaceTintColor: Colors.brown,
    elevation: Dimensions.height5/2,
    shadowColor: Colors.brown,
    fixedSize: Size(Dimensions.height20*8, Dimensions.height20*3)
    //maximumSize: Size(Dimensions.height20*15, Dimensions.height20*6)

);

final ButtonStyle transparentButton = ElevatedButton.styleFrom(

    
    
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(Dimensions.height10),),
    side: BorderSide(color: AppColors.mainColor,strokeAlign: BorderSide.strokeAlignInside,width: 1.2),
    
    foregroundColor: AppColors.background,
    backgroundColor: const Color.fromARGB(228, 255, 255, 255),
    surfaceTintColor: AppColors.background,
    elevation: Dimensions.height5/2,
    //shadowColor: Colors.brown,
    fixedSize: Size(Dimensions.height20*8, Dimensions.height20*3)
    //maximumSize: Size(Dimensions.height20*15, Dimensions.height20*6)

);