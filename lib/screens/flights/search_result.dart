import 'package:cojet/routes/routes_helper.dart';
import 'package:cojet/utility/Dimensions.dart';
import 'package:cojet/utility/app_colors.dart';
import 'package:cojet/utility/widgets/heading_text.dart';
import 'package:cojet/utility/widgets/main_button.dart';
import 'package:cojet/utility/widgets/sub_heading_text.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:get/get.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
        body: Column(
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
                HeadingText(text: "Search Result",fontWeight: FontWeight.bold,),
              ],
            ),
            
            Expanded(child: ListView.builder(
              itemCount: 3,
              itemBuilder: (_,index){
                  return Padding(
                    padding:  EdgeInsets.all(Dimensions.height15),
                    child: Container(
                      width: double.maxFinite,
                      height: Dimensions.height20*12,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(Dimensions.height15)
                      ),
                      child: Padding(
                        padding:  EdgeInsets.all(Dimensions.height15),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Icon(LineIcons.googleLogo,color: Colors.red,),
                                    SizedBox(width: Dimensions.height10,),
                                    SubHeadingText(text: "IN 230",color: Colors.black,size: Dimensions.font20,)
                                  ],
                                ),
                                SubHeadingText(text: "01 hr 40min",size: Dimensions.font12,color: const Color.fromARGB(255, 119, 118, 118),fontWeight: FontWeight.bold,),
                              ],
                            ),
                            SizedBox(height: Dimensions.height20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SubHeadingText(text: "5:30",color: Colors.black,size: Dimensions.font20,),
                                    SubHeadingText(text: "LON [London]",size: Dimensions.font12,color: const Color.fromARGB(255, 119, 118, 118),fontWeight: FontWeight.bold,)
                                  ],
                                ),
                                Icon(LineIcons.planeArrival,color: AppColors.activeIcon,size: Dimensions.height30,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SubHeadingText(text: "7:30",color: Colors.black,size: Dimensions.font20,),
                                    SubHeadingText(text: "SIN [Singapore]",size: Dimensions.font12,color: const Color.fromARGB(255, 119, 118, 118),fontWeight: FontWeight.bold,)
                                  ],
                                )
                              ],
                            ),
                            
                            SizedBox(height: Dimensions.height20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(LineIcons.car,size: Dimensions.font26,color: const Color.fromARGB(255, 119, 118, 118),),
                                    SizedBox(width: Dimensions.width15/2,),
                                    SubHeadingText(text: "Bussiness Class",size: Dimensions.font26/2,color: const Color.fromARGB(255, 119, 118, 118),fontWeight: FontWeight.bold,)
                                  ],
                                ),
                                
                                Row(
                                  children: [
                                    SubHeadingText(text: "From ",color: const Color.fromARGB(255, 119, 118, 118),size: Dimensions.font26/2,),
                                    SubHeadingText(text: "\$230",size: Dimensions.font20,color: Colors.black,)
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: Dimensions.height20,),
                            ElevatedButton(onPressed: () {Get.toNamed(RoutesHelper.getFlightDetails());} ,style: mainButton, child: SubHeadingText(text: "Check",color: Colors.white,size: Dimensions.font20,),)
                          ],
                        ),
                      ),
                    ),
                  );
            }
            )
            )
          ],
        )
    );
    
  }
}