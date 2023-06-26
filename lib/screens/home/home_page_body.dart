import 'package:cojet/screens/home/home_page_context.dart';
import 'package:cojet/utility/Dimensions.dart';
import 'package:cojet/utility/app_colors.dart';
import 'package:cojet/utility/widgets/heading_text.dart';
import 'package:cojet/utility/widgets/sub_heading_text.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 0.692),
      body: Stack(
        children: [

           Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularProductImgSize,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/routeimg5.png"),
                fit: BoxFit.cover)
              ),
            )
            ),

            Positioned(
              top: Dimensions.height20*6,
              left: 0,
              right: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  HeadingText(text: "Private aviation made simple",color: Colors.white,),
                  SizedBox(height: Dimensions.width15,),
                  SubHeadingText(text: "Welcome to one of Africa’s most trusted private aviation companies.",),
                  SizedBox(height: Dimensions.height30,),
                  Center(
                    child: Container(
                      height: Dimensions.height20*28,
                      width: double.maxFinite,
                      child: Context(),
                    ),
                  )
                  
                ],
              )
              )
          
        ],
      ),
    );
  }
}