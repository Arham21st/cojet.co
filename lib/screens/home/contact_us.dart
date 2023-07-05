import 'package:cojet/utility/widgets/heading_text.dart';
import 'package:cojet/utility/widgets/main_button.dart';
import 'package:cojet/utility/widgets/sub_heading_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/routes_helper.dart';
import '../../utility/Dimensions.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  var _messageName = TextEditingController();
  var _messageEmail = TextEditingController();
  var _message = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Positioned(
            // top: Dimensions.height20*1.2,
            // left: Dimensions.height20,
            // child: InkWell(
            //   onTap: () {
            //     Get.toNamed(RoutesHelper.getPayment());
            //   },
            //   child: Icon(Icons.arrow_back_ios))
            // ),

            Positioned(
              top: Dimensions.height20,
              left: 0,
              right: 0,
              child: Padding(padding: EdgeInsets.only(left: Dimensions.height30,right: Dimensions.height30),
              child: Column(
                children: [
                  HeadingText(text: "Contact Us",fontWeight: FontWeight.bold,),
                  SizedBox(height: Dimensions.height20*2,),
                  Row(
                    children: [
                      HeadingText(text: "Your Name:",size: Dimensions.font20,fontWeight: FontWeight.bold,),
                      SizedBox(width: Dimensions.height10,),
                      Expanded(
                        child: TextField(
                          controller: _messageName,
                          keyboardType: TextInputType.name,
                          cursorHeight: Dimensions.height20,
                          cursorColor: Colors.black,
                          cursorWidth: 1.0,
                          decoration: InputDecoration(
                            hintText: "Your name",
                            hintStyle: TextStyle(fontFamily: "Heading",fontStyle: FontStyle.italic, fontSize: Dimensions.font16,fontWeight: FontWeight.bold,color: Colors.black),
                            enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 1.2)),
                            focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 1.2)),
                            
                          ),
                        ),
                      )
                    ],
                  ),


                  SizedBox(height:Dimensions.height20),

                  Row(
                    children: [
                      HeadingText(text: "Your Email:",size: Dimensions.font20,fontWeight: FontWeight.bold,),
                      SizedBox(width: Dimensions.height10,),
                      Expanded(
                        child: TextField(
                          controller: _messageEmail,
                          keyboardType: TextInputType.name,
                          cursorHeight: Dimensions.height20,
                          cursorColor: Colors.black,
                          cursorWidth: 1.0,
                          decoration: InputDecoration(
                            hintText: "user@example.com",
                            hintStyle: TextStyle(fontFamily: "Heading",fontStyle: FontStyle.italic, fontSize: Dimensions.font16,fontWeight: FontWeight.bold,color: Colors.black),
                            enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 1.2)),
                            focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 1.2)),
                            
                            
                          ),
                        ),
                      )
                    ],
                  ),

                  SizedBox(height: Dimensions.height20*4,),

                  TextField(
                    controller: _message,
                    keyboardType: TextInputType.multiline,
                    cursorHeight: Dimensions.height30,
                    cursorColor: Colors.black,
                    cursorWidth: 2.0,
                    //expands: true,
                    maxLines: 5,
                    
                    //maxLength: 100,
                    style: TextStyle(fontFamily: "Heading",fontSize: Dimensions.font26,fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      hintText: "Enter your message here...",
                      hintStyle: TextStyle(fontFamily: "Heading",fontStyle: FontStyle.italic, fontSize: Dimensions.font26,fontWeight: FontWeight.bold,color: Colors.black),
                      enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 1.2,),),
                      focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 1.2)),
                    ),
                  ),

                  SizedBox(height: Dimensions.height20*2,),
                  ElevatedButton(onPressed: () {
                    
                  }, child: SubHeadingText(text: "Send",size: Dimensions.font26,),style: smallButton,),
                  SizedBox(height: Dimensions.height20*2,),
                  SubHeadingText(text: "Cojet.co",size: Dimensions.font26,color: Colors.black,)

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