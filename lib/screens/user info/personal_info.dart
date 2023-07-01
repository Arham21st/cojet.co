import 'package:cojet/routes/routes_helper.dart';
import 'package:cojet/utility/Dimensions.dart';
import 'package:cojet/utility/app_colors.dart';
import 'package:cojet/utility/widgets/heading_text.dart';
import 'package:cojet/utility/widgets/main_button.dart';
import 'package:cojet/utility/widgets/sub_heading_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
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
                  child: Icon(Icons.arrow_back_ios),
                  ),
                  ),
          Positioned(
            top: Dimensions.height20*2.5,
            left: 0,
            right: 0,
            
            child: Column(
          children: [
            
           
            HeadingText(text: "Personal Info",fontWeight: FontWeight.bold,),
            SizedBox(height: Dimensions.height20*2,),
            CircleAvatar(backgroundColor: AppColors.mainColor,radius: Dimensions.height20*1.7,foregroundImage: AssetImage("assets/images/profile.jpg")),
            SizedBox(height: Dimensions.height10,),
            SubHeadingText(text: "Hello Traveler",color: Colors.black,size: Dimensions.font20,),
            
            Padding(padding: EdgeInsets.all(Dimensions.height30),
            child: Column(
              children: [
                //name
                TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person_2_outlined,color: AppColors.grayColor,size: Dimensions.height30,),
                    hintText: "Enter your name here",
                    helperStyle: TextStyle(fontFamily: "Lato",color: AppColors.grayColor,fontSize: Dimensions.font16,),
                    label: SubHeadingText(text: "Name",color: AppColors.grayColor,size: Dimensions.font20,),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(Dimensions.height5),
                      borderSide: BorderSide(color: AppColors.grayColor,strokeAlign: BorderSide.strokeAlignInside,width: 1.3),
                      
                    ),
      
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(Dimensions.height5),
                      borderSide: BorderSide(color: AppColors.mainColor,width: 1.3,strokeAlign: BorderSide.strokeAlignInside)
                    ),
                  ),
                ),
                SizedBox(height: Dimensions.height20,),
      
                //address
                TextField(
                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.place,color: AppColors.grayColor,size: Dimensions.height30,),
                    hintText: "Enter your address",
                    helperStyle: TextStyle(fontFamily: "Lato",color: AppColors.grayColor,fontSize: Dimensions.font16,),
                    label: SubHeadingText(text: "Address",color: AppColors.grayColor,size: Dimensions.font20,),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(Dimensions.height5),
                      borderSide: BorderSide(color: AppColors.grayColor,strokeAlign: BorderSide.strokeAlignInside,width: 1.3),                    
                    ),
      
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(Dimensions.height5),
                      borderSide: BorderSide(color: AppColors.mainColor,width: 1.3,strokeAlign: BorderSide.strokeAlignInside)
                    ),
                  ),
                ),
      
                SizedBox(height: Dimensions.height20,),
      
                //passport
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(LineIcons.passport, color: AppColors.grayColor,size: Dimensions.height30,),
                    hintText: "ED 24567 345",
                    helperStyle: TextStyle(fontFamily: "Lato",color: AppColors.grayColor,fontSize: Dimensions.font16,),
                    label: SubHeadingText(text: "Passport",color: AppColors.grayColor,size: Dimensions.font20,),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(Dimensions.height5),
                      borderSide: BorderSide(color: AppColors.grayColor,strokeAlign: BorderSide.strokeAlignInside,width: 1.3),                    
                    ),
      
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(Dimensions.height5),
                      borderSide: BorderSide(color: AppColors.mainColor,width: 1.3,strokeAlign: BorderSide.strokeAlignInside)
                    ),
                  ),
                ),
      
                SizedBox(height: Dimensions.height20,),
      
                //DOB
                TextField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    suffixIcon: Icon(LineIcons.calendar, color: AppColors.grayColor,size: Dimensions.height30,),
                    prefixIcon: Icon(LineIcons.birthdayCake, color: AppColors.grayColor,size: Dimensions.height30,),
                    hintText: "21/10/1997",
                    helperStyle: TextStyle(fontFamily: "Lato",color: AppColors.grayColor,fontSize: Dimensions.font16,),
                    label: SubHeadingText(text: "DOB",color: AppColors.grayColor,size: Dimensions.font20,),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(Dimensions.height5),
                      borderSide: BorderSide(color: AppColors.grayColor,strokeAlign: BorderSide.strokeAlignInside,width: 1.3),                    
                    ),
      
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(Dimensions.height5),
                      borderSide: BorderSide(color: AppColors.mainColor,width: 1.3,strokeAlign: BorderSide.strokeAlignInside)
                    ),
                  ),
                ),
                
                SizedBox(height: Dimensions.height20,),
      
                //country
      
                TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    
                    suffixIcon: Icon(Icons.arrow_drop_down_outlined, color: AppColors.grayColor,size: Dimensions.height30,),
                    prefixIcon: Icon(LineIcons.globe, color: AppColors.grayColor,size: Dimensions.height30,),
                    hintText: "Country",
                    helperStyle: TextStyle(fontFamily: "Lato",color: AppColors.grayColor,fontSize: Dimensions.font16,),
                    label: SubHeadingText(text: "Country",color: AppColors.grayColor,size: Dimensions.font20,),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(Dimensions.height5),
                      borderSide: BorderSide(color: AppColors.grayColor,strokeAlign: BorderSide.strokeAlignInside,width: 1.3),                    
                    ),
      
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(Dimensions.height5),
                      borderSide: BorderSide(color: AppColors.mainColor,width: 1.3,strokeAlign: BorderSide.strokeAlignInside)
                    ),
                  ),
                ),
                SizedBox(height: Dimensions.height30,),
                ElevatedButton(onPressed: () {
                   Get.toNamed(RoutesHelper.getPayment());
                }, child: SubHeadingText(text: "Confirm",size: Dimensions.font20,),style: mainButton,),
                SizedBox(height: Dimensions.height20,),
                SubHeadingText(text: "Skip",size: Dimensions.font20,color: AppColors.mainColor,)
                
              
              
              
              ],
            ),)
          ],
        ),
      )
        ],
      ),
    );
  }
}