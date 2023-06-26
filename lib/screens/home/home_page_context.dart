import 'package:cojet/utility/Dimensions.dart';
import 'package:cojet/utility/app_colors.dart';
import 'package:cojet/utility/widgets/main_button.dart';
import 'package:cojet/utility/widgets/sub_heading_text.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter/material.dart';

import '../../utility/widgets/heading_text.dart';

class Context extends StatefulWidget {
  const Context({super.key});

  @override
  State<Context> createState() => _ContextState();
}

class _ContextState extends State<Context> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stepper( 
                        physics: NeverScrollableScrollPhysics(),
                        type: StepperType.horizontal,
                        steps: [
                          Step(title: HeadingText(text: "One way",size: Dimensions.font20,color: AppColors.activeIcon,fontWeight: FontWeight.bold,),
                          isActive: _currentIndex==0,
                          content: Container(
                            width: double.maxFinite,
                            // height: Dimensions.height20*28,
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.mainColor,width: 1),
                             // borderRadius: BorderRadius.circular(Dimensions.height20),
                              boxShadow: [
                                BoxShadow(color: AppColors.activeIcon,spreadRadius: 0.5)
                              ],
                              color: Colors.white
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: Dimensions.height20,),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      
                                      keyboardType: TextInputType.name,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        
                                        label: HeadingText(text: "From",size: Dimensions.font26,fontWeight: FontWeight.bold,color: AppColors.activeIcon,),
                                        floatingLabelBehavior: FloatingLabelBehavior.always,
                                        hintStyle: TextStyle(color: AppColors.activeIcon,fontFamily: "Heading",fontSize: Dimensions.font20,fontWeight: FontWeight.bold),
                                        hintText: "Freom where",
                                        prefixIcon: Icon(
                                          LineIcons.planeDeparture,
                                          size: Dimensions.height30,
                                          color: AppColors.activeIcon,),
                                          
                                        
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(Dimensions.height10),
                                          borderSide: BorderSide(color: AppColors.mainColor),
                                  
                                          
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(Dimensions.height10),
                                          borderSide: BorderSide(color: AppColors.activeIcon),
                                        )
                                      ),
                                      
                                  
                                  
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      keyboardType: TextInputType.name,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        label: HeadingText(text: "To",size: Dimensions.font26,fontWeight: FontWeight.bold,color: AppColors.activeIcon,),
                                        floatingLabelBehavior: FloatingLabelBehavior.always,
                                        hintStyle: TextStyle(color: AppColors.activeIcon,fontFamily: "Heading",fontSize: Dimensions.font20,fontWeight: FontWeight.bold),
                                        hintText: "To where",
                                        prefixIcon: Icon(
                                          LineIcons.planeArrival,
                                          size: Dimensions.height30,
                                          color: AppColors.activeIcon,),
                                          
                                        
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(Dimensions.height10),
                                          borderSide: BorderSide(color: AppColors.mainColor),
                                  
                                          
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(Dimensions.height10),
                                          borderSide: BorderSide(color: AppColors.activeIcon),
                                        )
                                      ),
                                      
                                  
                                  
                                    ),
                                  ),
                                  
                                  Row(
                                    children: [
                                      Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      width: Dimensions.height20*8.2,
                                      child: TextField(
                                        
                                        keyboardType: TextInputType.name,
                                        autofocus: false,
                                        decoration: InputDecoration(
                                          
                                          label: HeadingText(text: "Departure",size: Dimensions.font20,fontWeight: FontWeight.bold,color: AppColors.activeIcon,),
                                          floatingLabelBehavior: FloatingLabelBehavior.always,
                                          hintStyle: TextStyle(color: AppColors.activeIcon,fontFamily: "Heading",fontSize: Dimensions.font16,fontWeight: FontWeight.bold),
                                          hintText: "DD/MM/YY",
                                          prefixIcon: Icon(
                                            LineIcons.calendar,
                                            size: Dimensions.height30,
                                            color: AppColors.activeIcon,),
                                            
                                          
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(Dimensions.height10),
                                            borderSide: BorderSide(color: AppColors.mainColor),
                                                                      
                                            
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(Dimensions.height10),
                                            borderSide: BorderSide(color: AppColors.activeIcon),
                                          )
                                        ),
                                        
                                                                      
                                                                      
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      width: Dimensions.height20*8.2,
                                      child: TextField(
                                        
                                        keyboardType: TextInputType.name,
                                        autofocus: false,
                                        decoration: InputDecoration(
                                          
                                          label: HeadingText(text: "Return",size: Dimensions.font20,fontWeight: FontWeight.bold,color: AppColors.activeIcon,),
                                          floatingLabelBehavior: FloatingLabelBehavior.always,
                                          hintStyle: TextStyle(color: AppColors.activeIcon,fontFamily: "Heading",fontSize: Dimensions.font16,fontWeight: FontWeight.bold),
                                          hintText: "+ Add Return Date",
                                          
                                            
                                          
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(Dimensions.height10),
                                            borderSide: BorderSide(color: AppColors.mainColor),
                                                                      
                                            
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(Dimensions.height10),
                                            borderSide: BorderSide(color: AppColors.activeIcon),
                                          )
                                        ),
                                        
                                                                      
                                                                      
                                      ),
                                    ),
                                  ),


                                    ],
                                  ),

                                   Row(
                                    children: [
                                      Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      width: Dimensions.height20*8.2,
                                      child: TextField(
                                        
                                        keyboardType: TextInputType.name,
                                        autofocus: false,
                                        decoration: InputDecoration(
                                          
                                          label: HeadingText(text: "Traveller",size: Dimensions.font20,fontWeight: FontWeight.bold,color: AppColors.activeIcon,),
                                          floatingLabelBehavior: FloatingLabelBehavior.always,
                                          hintStyle: TextStyle(color: AppColors.activeIcon,fontFamily: "Heading",fontSize: Dimensions.font16,fontWeight: FontWeight.bold),
                                          hintText: "1 Adult",
                                          prefixIcon: Icon(
                                            LineIcons.calendar,
                                            size: Dimensions.height30,
                                            color: AppColors.activeIcon,),
                                            
                                          
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(Dimensions.height10),
                                            borderSide: BorderSide(color: AppColors.mainColor),
                                                                      
                                            
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(Dimensions.height10),
                                            borderSide: BorderSide(color: AppColors.activeIcon),
                                          )
                                        ),
                                        
                                                                      
                                                                      
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      width: Dimensions.height20*8.2,
                                      child: TextField(
                                        
                                        keyboardType: TextInputType.name,
                                        autofocus: false,
                                        decoration: InputDecoration(
                                          
                                          label: HeadingText(text: "Class",size: Dimensions.font20,fontWeight: FontWeight.bold,color: AppColors.activeIcon,),
                                          floatingLabelBehavior: FloatingLabelBehavior.always,
                                          hintStyle: TextStyle(color: AppColors.activeIcon,fontFamily: "Heading",fontSize: Dimensions.font16,fontWeight: FontWeight.bold),
                                          hintText: "Economy",
                                          
                                            
                                          
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(Dimensions.height10),
                                            borderSide: BorderSide(color: AppColors.mainColor),
                                                                      
                                            
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(Dimensions.height10),
                                            borderSide: BorderSide(color: AppColors.activeIcon),
                                          )
                                        ),
                                        
                                                                      
                                                                      
                                      ),
                                    ),
                                  ),


                                    ],
                                  ),
                                  SizedBox(height: Dimensions.height20,),
                                  ElevatedButton(onPressed: () {
                                    
                                  }, child: SubHeadingText(text: "Search",size: Dimensions.font26,fontWeight: FontWeight.normal,),
                                  
                                  style: mainButton,
                                    

                                  
                                  ),
                                  SizedBox(height: Dimensions.height15,)
                             
                             
                              ],
                            ),
                          )
                          ),
                          Step(title: HeadingText(text: "Round",size: Dimensions.font20,color: AppColors.activeIcon,fontWeight: FontWeight.bold,), 
                          isActive: _currentIndex==1,
                          content: Container(
                            width: double.maxFinite,
                            height: Dimensions.height20*10,
                            decoration: const BoxDecoration(
                              color: Colors.orange
                            ),
                          )
                          ),
                          Step(title: HeadingText(text: "Tours",size: Dimensions.font20,color: AppColors.activeIcon,fontWeight: FontWeight.bold,), 
                          isActive: _currentIndex==2,
                          content: Container(
                            width: double.maxFinite,
                            height: Dimensions.height20*10,
                            decoration: const BoxDecoration(
                              color: Colors.black
                            ),
                          )
                          ),
                      ],
                       onStepTapped: (int newIndex) {
                         setState(() {
                           _currentIndex = newIndex;
                         });
                       },
                       
                       currentStep: _currentIndex,
                       onStepCancel: () {
                         if(_currentIndex!= 0 ){
                          setState(() {
                            _currentIndex -=1 ;
                          });
                         }
                       },
                       onStepContinue: () {
                         if(_currentIndex!= 2 ){
                          setState(() {
                            _currentIndex +=1 ;
                          }
                          );
                         }
                       },
                       elevation: 7,
                       controlsBuilder: (context, details) {
                         return Text("");
                       },
                       stepIconBuilder: (stepIndex, stepState) {

                         return Text("");
                       },
                       

                      ),
      ),
    );
  }
}