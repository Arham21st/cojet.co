import 'package:cojet/routes/routes_helper.dart';
import 'package:cojet/utility/widgets/sub_heading_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

import '../../utility/Dimensions.dart';
import '../../utility/widgets/heading_text.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
              SizedBox(height: Dimensions.height20,),
              HeadingText(text: "Settings",fontWeight: FontWeight.bold,), 
              SizedBox(height: Dimensions.height20*2,),
              ListTile(
                onTap: () {
                  Get.toNamed(RoutesHelper.getPersonalInfo());
                },
                shape: BorderDirectional(top:  BorderSide(strokeAlign: BorderSide.strokeAlignInside,color: Colors.black,width: 0.5) ),
                leading: Icon(LineIcons.info,color: Colors.grey.shade500,size: Dimensions.height30,),
                title: SubHeadingText(text: "Account Information",color: Colors.black,size: Dimensions.font20,),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey.shade500,size: Dimensions.font20,),),
                ListTile(
                shape: BorderDirectional(top:  BorderSide(strokeAlign: BorderSide.strokeAlignInside,color: Colors.black,width: 0.5) ),
                leading: Icon(LineIcons.question,color: Colors.grey.shade500,size: Dimensions.height30,),
                title: SubHeadingText(text: "FAQ",color: Colors.black,size: Dimensions.font20,),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey.shade500,size: Dimensions.font20,),),
                ListTile(
                shape: BorderDirectional(top:  BorderSide(strokeAlign: BorderSide.strokeAlignInside,color: Colors.black,width: 0.5) ),
                leading: Icon(Icons.policy_outlined,color: Colors.grey.shade500,size: Dimensions.height30,),
                title: SubHeadingText(text: "Legal",color: Colors.black,size: Dimensions.font20,),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey.shade500,size: Dimensions.font20,),),
                ListTile(
                shape: BorderDirectional(top:  BorderSide(strokeAlign: BorderSide.strokeAlignInside,color: Colors.black,width: 0.5),
                bottom: BorderSide(strokeAlign: BorderSide.strokeAlignInside,color: Colors.black,width: 0.3) ),
                leading: Icon(Icons.login_outlined,color: Colors.grey.shade500,size: Dimensions.height30,),
                title: SubHeadingText(text: "Log In",color: Colors.black,size: Dimensions.font20,),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey.shade500,size: Dimensions.font20,),)
        ],
      )
      ),
    );
  }
}