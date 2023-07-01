import 'package:cojet/utility/app_colors.dart';
import 'package:cojet/utility/widgets/heading_text.dart';
import 'package:cojet/utility/widgets/sub_heading_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

import '../../routes/routes_helper.dart';
import '../../utility/Dimensions.dart';
import '../../utility/widgets/main_button.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: Dimensions.height20*2.7,
            left: Dimensions.height20,
            
            
            child: InkWell(
                  onTap: () => Get.toNamed(RoutesHelper.getFlightDetails()),
                  child: const Icon(Icons.arrow_back_ios),
                  ),
                  ),

          Positioned(
            top: Dimensions.height20*2.5,
            left: 0,
            right: 0,
            child: Column(
              children: [
                HeadingText(text: "Payment",fontWeight: FontWeight.bold,),
                SizedBox(height: Dimensions.height20,),
                Container(
                  height: Dimensions.height20*13,
                  width: double.maxFinite,
                  color: Color.fromARGB(255, 236, 231, 231),
                  child: Padding(
                    padding: EdgeInsets.only(left: Dimensions.height20*1.5,right: Dimensions.height20*1.5,top: Dimensions.height15,bottom: Dimensions.height10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(LineIcons.googleLogo,color: Colors.red,size: Dimensions.height30,),
                            Row(
                              children: [
                                Icon(LineIcons.calendar,color: Colors.black,),
                                SubHeadingText(text: " 01/07/23",color: Colors.black,size: Dimensions.font16,)
                              ],
                            ),
                            
                            
                          ],
                        ),
                        SizedBox(height: Dimensions.height20,),
                        Divider(thickness: 2,),
                        SizedBox(height: Dimensions.height20,),
                        Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SubHeadingText(text: "5:30",color: Colors.black,size: Dimensions.font26,fontWeight: FontWeight.bold,),
                                      SubHeadingText(text: "LON [London]",size: Dimensions.font16,color: const Color.fromARGB(255, 119, 118, 118),fontWeight: FontWeight.bold,)
                                    ],
                                  ),
                                  Icon(LineIcons.planeArrival,color: AppColors.activeIcon,size: Dimensions.height45,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      SubHeadingText(text: "7:30",color: Colors.black,size: Dimensions.font26,fontWeight: FontWeight.bold,),
                                      SubHeadingText(text: "SIN [Singapore]",size: Dimensions.font16,color: const Color.fromARGB(255, 119, 118, 118),fontWeight: FontWeight.bold,)
                                    ],
                                  )
                                ],
                              ),
                        SizedBox(height: Dimensions.height20,),
                        Divider(thickness: 2,),
                        SizedBox(height: Dimensions.height20,),  
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SubHeadingText(text: "Total",color: Colors.black,size: Dimensions.font16,),
                            SubHeadingText(text: "\$230",color: Colors.red,fontWeight: FontWeight.bold,size: Dimensions.font26,)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(Dimensions.height30),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: SubHeadingText(text: "Card Number",color: Colors.black,size: Dimensions.font20,fontWeight: FontWeight.bold,),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: "5300 0000 0000 0000",
                    hintStyle: const TextStyle(height: 2),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.mainColor)
                    )
                  ),
                ),
                ),
                Padding(padding: EdgeInsets.only(left: Dimensions.height30,right: Dimensions.height30),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: SubHeadingText(text: "Card Holder Name",color: Colors.black,size: Dimensions.font20,fontWeight: FontWeight.bold,),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: "Sam Chu",
                    hintStyle: const TextStyle(height: 2),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.mainColor)
                    )
                  ),
                ),
                ),
                Padding(
                  padding:  EdgeInsets.all(Dimensions.height30),
                  child: Row(
                    children: [
                      Expanded(child: TextField(
                        keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: SubHeadingText(text: "CVV",color: Colors.black,size: Dimensions.font20,fontWeight: FontWeight.bold,),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: "000",
                    hintStyle: const TextStyle(height: 2),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.mainColor)
                    )
                  ),
                      )),
                      SizedBox(width: Dimensions.height20,),
                      Expanded(child: TextField(
                        keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: SubHeadingText(text: "Expiry date",color: Colors.black,size: Dimensions.font20,fontWeight: FontWeight.bold,),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: "03/24",
                    hintStyle: const TextStyle(height: 2),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.mainColor)
                    )
                  ),
                      )),
                    ],
                  ),
                ),
                
                Padding(
                  padding:  EdgeInsets.only(left: Dimensions.height30),
                  child: Row(
                    children: [
                      const Image(image: AssetImage("assets/images/mastercard logo.jpg")),
                      SizedBox(width: Dimensions.height10,),
                      const Image(image: AssetImage("assets/images/visa logo.jpg")),
                      SizedBox(width: Dimensions.height10,),
                      const Image(image: AssetImage("assets/images/paypal logo.jpg"))
                    ],
                  ),

                ),
                SizedBox(height: Dimensions.height20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              ElevatedButton(onPressed: () {
                 Get.toNamed(RoutesHelper.getFlightDetails());
              },style: transparentButton, child: SubHeadingText(text: "Cancel",size: Dimensions.font20,color: AppColors.mainColor,),),
              SizedBox(width: Dimensions.height5,),
              ElevatedButton(onPressed: () {
               //Get.toNamed(RoutesHelper.getPersonalInfo()); 
              },style: smallButton, child: SubHeadingText(text: "Confirm",size: Dimensions.font20,),)
            ],
            ),
            SizedBox(height: Dimensions.height10,)
                
              ],

          )
          )

        ],
      ),
    );
  }
}