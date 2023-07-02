import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

import '../../routes/routes_helper.dart';
import '../../utility/Dimensions.dart';
import '../../utility/app_colors.dart';
import '../../utility/widgets/heading_text.dart';
import '../../utility/widgets/main_button.dart';
import '../../utility/widgets/sub_heading_text.dart';

class MyBookings extends StatelessWidget {
  const MyBookings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                height: Dimensions.width20*2.5,),
                 Row(
                children: [
                  SizedBox(width: Dimensions.height20,),
                  InkWell(
                    onTap: () => Get.toNamed(RoutesHelper.getInitial()),
                    child: const Icon(Icons.arrow_back_ios)),
                    SizedBox(width: Dimensions.height20*4.5,),
                    HeadingText(text: "Flight Details",fontWeight: FontWeight.bold,),
                ],
              ),
              
            SizedBox(height: Dimensions.height20*2,),
            Padding(
              padding: EdgeInsets.all(Dimensions.height15),
              child: Container(
                height: Dimensions.height20*30,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Dimensions.height20)
                  
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left:Dimensions.height20,right: Dimensions.height20),
                      child: SizedBox(
                        height: Dimensions.height20*5,
                        child: Center(
                          child: Icon(LineIcons.googleLogo,size: Dimensions.height45,color: Colors.red,),
                        ),
                      ),
                    ),
                    Divider(color: AppColors.grayColor,
                    ),
                    Container(
                      height: Dimensions.height20*8.5,
                      //color: AppColors.mainColor,
                      child: Padding(padding: EdgeInsets.only(left: Dimensions.height20,right: Dimensions.width20),
                      child: Column(
                        children: [
                          
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
                          
                          SizedBox(height: Dimensions.height15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: Dimensions.height20*6,
                                //height: Dimensions.height20*2,
                                //color: AppColors.activeIcon,
                                child: SubHeadingText(text: "Heathrow Airport London Borough of Newham.",color: AppColors.grayColor,size: Dimensions.font16,fontWeight: FontWeight.bold,),
                              ),
                              Container(
                                width: Dimensions.height20*6,
                                //height: Dimensions.height20*2,
                                //color: AppColors.activeIcon,
                                child: SubHeadingText(text: "Changi Airport East Singapore.",color: AppColors.grayColor,size: Dimensions.font16,fontWeight: FontWeight.bold,align: TextAlign.end,),
                              )
                            ],
                          )   
                        ],
                      ),
                    )
                    ),
                    Divider(color: AppColors.grayColor,),
                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                      padding: EdgeInsets.only(left:Dimensions.height5,right: Dimensions.height5,bottom: Dimensions.height10,top: Dimensions.height15),
                                      child: SizedBox(
                                        width: Dimensions.height20*8.2,
                                        child: TextField(
                                          enabled: false,
                                          keyboardType: TextInputType.none,
                                          autofocus: false,
                                          decoration: InputDecoration(
                                            
                                            label: SubHeadingText(text: "Date",size: Dimensions.font20,fontWeight: FontWeight.bold,color: AppColors.grayColor,),
                                            floatingLabelBehavior: FloatingLabelBehavior.always,
                                            hintStyle: TextStyle(color: AppColors.grayColor,fontFamily: "Lato",fontSize: Dimensions.font16,fontWeight: FontWeight.bold),
                                            hintText: "15/07/2023",
                                            prefixIcon: Icon(
                                              LineIcons.calendar,
                                              size: Dimensions.height30,
                                              color: AppColors.grayColor,),
                                              
                                            
                                            disabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(Dimensions.height10),
                                              borderSide: BorderSide(color: AppColors.mainColor),
                                                                        
                                              
                                            ),
                                            
                                          ),
                                          
                                                                        
                                                                        
                                        ),
                                      ),
                                    ),
      
                                    Padding(
                                      padding: EdgeInsets.only(left:Dimensions.height5,right: Dimensions.height5,bottom: Dimensions.height10,top: Dimensions.height15),
                                      child: SizedBox(
                                        width: Dimensions.height20*8.2,
                                        child: TextField(
      
      
                                          enabled: false,
                                          keyboardType: TextInputType.none,
                                          autofocus: false,
                                          decoration: InputDecoration(
                                            
                                            label: SubHeadingText(text: "Time",size: Dimensions.font20,fontWeight: FontWeight.bold,color: AppColors.grayColor,),
                                            floatingLabelBehavior: FloatingLabelBehavior.always,
                                            hintStyle: TextStyle(color: AppColors.grayColor,fontFamily: "Lato",fontSize: Dimensions.font16,fontWeight: FontWeight.bold),
                                            hintText: "9:30",
                                            prefixIcon: Icon(
                                              LineIcons.clock,
                                              size: Dimensions.height30,
                                              color: AppColors.grayColor,),
                                              
                                            
                                            disabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(Dimensions.height10),
                                              borderSide: BorderSide(color: AppColors.grayColor),
                                                                        
                                              
                                            ),
                                            
                                          ),
                                          
                                                                        
                                                                        
                                        ),
                                      ),
                                    ),
      
      
                                      ],
                                    ),
      
                    SizedBox(height: Dimensions.height10,),
                    Divider(color: AppColors.grayColor,thickness: 0.5,),
                    SizedBox(height: Dimensions.height20,),
                    Padding(
                      padding: EdgeInsets.only(left: Dimensions.height20,right: Dimensions.height20),
                      child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SubHeadingText(text: "Flight",color: AppColors.grayColor,size: Dimensions.font16,),
                                    SizedBox(height: Dimensions.height5,),
                                    SubHeadingText(text: "IN 230", color: Colors.black,size: Dimensions.font20,fontWeight: FontWeight.bold,)
                                  ],
                                ),
                                 Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SubHeadingText(text: "Gate",color: AppColors.grayColor,size: Dimensions.font16,),
                                    SizedBox(height: Dimensions.height5,),
                                    SubHeadingText(text: "22", color: Colors.black,size: Dimensions.font20,fontWeight: FontWeight.bold,)
                                  ],
                                ),
                                 Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SubHeadingText(text: "Seat",color: AppColors.grayColor,size: Dimensions.font16,),
                                    SizedBox(height: Dimensions.height5,),
                                    SubHeadingText(text: "2B", color: Colors.black,size: Dimensions.font20,fontWeight: FontWeight.bold,)
                                  ],
                                ),
                                 Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SubHeadingText(text: "Class",color: AppColors.grayColor,size: Dimensions.font16,),
                                    SizedBox(height: Dimensions.height5,),
                                    SubHeadingText(text: "Economy", color: Colors.black,size: Dimensions.font20,fontWeight: FontWeight.bold,),
                                    
                                  ],
                                ),
                                
                              ],
                            ),
                    ),
                          SizedBox(height: Dimensions.height20*2,),
                                  ElevatedButton(onPressed: () {
                                    Get.toNamed(RoutesHelper.getFlightDetails());
                                  }, child: SubHeadingText(text: "Modify",size: Dimensions.font20,),style: mainButton,)
                         
                  
                  ],
                ),
              ),
            ),
            // SizedBox(height: Dimensions.height20,),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //   ElevatedButton(onPressed: () {
            //      Get.toNamed(RoutesHelper.getISearchResult());
            //   },style: transparentButton, child: SubHeadingText(text: "Cancel",size: Dimensions.font20,color: AppColors.mainColor,),),
            //   SizedBox(width: Dimensions.height5,),
            //   ElevatedButton(onPressed: () {
            //    Get.toNamed(RoutesHelper.getPersonalInfo()); 
            //   },style: smallButton, child: SubHeadingText(text: "Confirm",size: Dimensions.font20,),)
            // ],
            // ),
            // SizedBox(height: Dimensions.height10,)
          ],
        ),
      ),
    );
  
  }
}