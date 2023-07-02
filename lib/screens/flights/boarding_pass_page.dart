

import 'package:cojet/routes/routes_helper.dart';
import 'package:cojet/utility/Dimensions.dart';
import 'package:cojet/utility/app_colors.dart';
import 'package:cojet/utility/widgets/heading_text.dart';
import 'package:cojet/utility/widgets/main_button.dart';
import 'package:cojet/utility/widgets/sub_heading_text.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:get/get.dart';

class BoardingPass extends StatelessWidget {
  const BoardingPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Stack(
        children: [
          Positioned(
            top: Dimensions.height20*1.2,
            left: Dimensions.height20,
            child: InkWell(
              onTap: () {
                Get.toNamed(RoutesHelper.getPayment());
              },
              child: Icon(Icons.arrow_back_ios))
            ),
            Positioned(
              top: Dimensions.height20,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.only(left:Dimensions.height30,right: Dimensions.height30),
                child: Column(
                  
                children: [
                  HeadingText(text: "Boarding Pass",fontWeight: FontWeight.bold,),
                  SizedBox(height: Dimensions.height20*2,),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: CircleAvatar(
                    backgroundColor: AppColors.mainColor,
                    backgroundImage: AssetImage("assets/images/profile.jpg",),
                    radius: Dimensions.height20*1.7
                  ),
                  title: SubHeadingText(text: "Ahmat Tidjani Salim",color: Colors.black,size: Dimensions.font20,fontWeight: FontWeight.bold,),
                  titleAlignment: ListTileTitleAlignment.center,
                  subtitle: SubHeadingText(text: "Passenger",color: Colors.grey.shade600,size: Dimensions.font16,),
                  trailing: Icon(LineIcons.googleLogo,color: Colors.red,size: Dimensions.height30,),
                  ),
                  SizedBox(height: Dimensions.height10,),
                  Divider(color: Colors.grey.shade400,),
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
                          Divider(color: AppColors.grayColor,),
                          SizedBox(height: Dimensions.height20,),
                          Row(
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
                                  SubHeadingText(text: "Economy", color: Colors.black,size: Dimensions.font20,fontWeight: FontWeight.bold,)
                                ],
                              ),
                              
                            ],
                          ),
                         
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              LineIcon.barcode(size: Dimensions.height20*4,),
                              LineIcon.barcode(size: Dimensions.height20*4,),
                              LineIcon.barcode(size: Dimensions.height20*4,),
                              LineIcon.barcode(size: Dimensions.height20*4,),
                              
                            ],
                          ),
                          SizedBox(height:Dimensions.height20),
                          ElevatedButton(onPressed: () {
                            
                          }, child: SubHeadingText(text: "Download",size: Dimensions.font20,),style: mainButton,),
                          SizedBox(height: Dimensions.height20,),
                          TextButton(onPressed: () {
                            Get.toNamed(RoutesHelper.getInitial());
                          }, child: SubHeadingText(text: "Book another flight",size: Dimensions.font20,color: AppColors.mainColor,))

                ],
                          ),
              )
              )
        ],
      )
      ),
    );
  }
}