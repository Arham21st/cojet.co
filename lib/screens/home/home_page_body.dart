import 'package:cojet/utility/Dimensions.dart';
import 'package:cojet/utility/app_colors.dart';
import 'package:cojet/utility/widgets/heading_text.dart';
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
      backgroundColor: const Color.fromARGB(235, 255, 255, 255),
      body: Stack(
        children: [

          Positioned(
            top: Dimensions.height20*3,
            left: Dimensions.height20*8,
            child: HeadingText(text: "Book Flight")
            //Text("Book Flight")
            ),

          Positioned(
            top: Dimensions.height20*6,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Container(
                  height: Dimensions.height20*2,
                  width: Dimensions.height20*15,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.height25),
                  ),
                  child: Row(
                    children: [
                      ElevatedButton(onPressed: () {
                        
                      }, child: HeadingText(text: "One way"),
                      style:ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(AppColors.mainColor),
                        fixedSize: MaterialStatePropertyAll(
                          Size(Dimensions.height20*5,Dimensions.height20*2)
                          ),
                          
                          )
                          ),
                      Container(
                        height: Dimensions.height20*2,
                        width: Dimensions.height20*5,
                        decoration: BoxDecoration(
                          color: AppColors.mainColor,
                          borderRadius: BorderRadius.circular(Dimensions.height20)
                        ),
                      ),
                      Container(
                        height: Dimensions.height20*2,
                        width: Dimensions.height20*5,
                        decoration: BoxDecoration(
                          color: AppColors.mainColor,
                          borderRadius: BorderRadius.circular(Dimensions.height20)
                        ),
                      ),
                      
                    ],
                  ),
                )
              ],
            )
          ),
        ],
      ),
    );
  }
}