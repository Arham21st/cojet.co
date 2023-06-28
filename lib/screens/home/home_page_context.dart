import 'package:cojet/routes/routes_helper.dart';
import 'package:cojet/utility/Dimensions.dart';
import 'package:cojet/utility/app_colors.dart';
import 'package:cojet/utility/widgets/main_button.dart';
import 'package:cojet/utility/widgets/sub_heading_text.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter/material.dart';
import '../../utility/widgets/heading_text.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:get/get.dart';

class Context extends StatefulWidget {
  const Context({super.key});

  @override
  State<Context> createState() => _ContextState();
}

class _ContextState extends State<Context> {
  List<DateTime?> _dialogCalendarPickerValue = [
    DateTime.now(),
  ];


  String _getValueText(
    CalendarDatePicker2Type datePickerType,
    List<DateTime?> values,
  ) {
    values =
        values.map((e) => e != null ? DateUtils.dateOnly(e) : null).toList();
    var valueText = (values.isNotEmpty ? values[0] : null)
        .toString()
        .replaceAll('00:00:00.000', '');

    if (datePickerType == CalendarDatePicker2Type.multi) {
      valueText = values.isNotEmpty
          ? values
              .map((v) => v.toString().replaceAll('00:00:00.000', ''))
              .join(', ')
          : 'null';
    } else if (datePickerType == CalendarDatePicker2Type.range) {
      if (values.isNotEmpty) {
        final startDate = values[0].toString().replaceAll('00:00:00.000', '');
        final endDate = values.length > 1
            ? values[1].toString().replaceAll('00:00:00.000', '')
            : 'null';
        valueText = '$startDate to $endDate';
      } else {
        return 'null';
      }
    }

    return valueText;
  }

  buildCalendarDialogButton() {
    const dayTextStyle =
        TextStyle(color: Colors.black, fontWeight: FontWeight.w700);
    
    
    final config = CalendarDatePicker2WithActionButtonsConfig(
      disabledDayTextStyle: const TextStyle(
        color: Color.fromARGB(255, 201, 200, 200),
      ),
      selectableDayPredicate: (day) => !day
          .difference(DateTime.now().subtract(const Duration(days: 1)))
          .isNegative,
      dayTextStyle: dayTextStyle,
      calendarType: CalendarDatePicker2Type.single,
      selectedDayHighlightColor: Colors.brown[800],
      closeDialogOnCancelTapped: true,
      firstDayOfWeek: 1,
      weekdayLabelTextStyle: const TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.bold,
      ),
      controlsTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
      centerAlignModePicker: true,
      customModePickerIcon: const SizedBox(),
      selectedDayTextStyle: dayTextStyle.copyWith(color: Colors.white),
      dayTextStylePredicate: ({required date}) {
        TextStyle? textStyle;
       
        return textStyle;
      },
      // dayBuilder: ({
      //   required date,
      //   textStyle,
      //   decoration,
      //   isSelected,
      //   isDisabled,
      //   isToday,
      // }) {
      //   Widget? dayWidget;
      //   if (date.day % 3 == 0 && date.day % 9 != 0) {
      //     dayWidget = Container(
      //       decoration: decoration,
      //       child: Center(
      //         child: Stack(
      //           alignment: AlignmentDirectional.center,
      //           children: [
      //             Text(
      //               MaterialLocalizations.of(context).formatDecimal(date.day),
      //               style: textStyle,
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.only(top: 27.5),
      //               child: Container(
      //                 height: 4,
      //                 width: 4,
      //                 decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(5),
      //                   color: isSelected == true
      //                       ? Colors.white
      //                       : Colors.grey[500],
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     );
      //   }
      //   return dayWidget;
      // },
      yearBuilder: ({
        required year,
        decoration,
        isCurrentYear,
        isDisabled,
        isSelected,
        textStyle,
      }) {
        return Center(
          child: Container(
            decoration: decoration,
            height: 36,
            width: 72,
            child: Center(
              child: Semantics(
                selected: isSelected,
                button: true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      year.toString(),
                      style: textStyle,
                    ),
                    if (isCurrentYear == true)
                      Container(
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.only(left: 5),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.redAccent,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
    
    return showCalendarDatePicker2Dialog(
      context: context, 
      config: config, 
      dialogSize: Size(Dimensions.height20*17, 
      Dimensions.height20*21),
      value: _dialogCalendarPickerValue,
      borderRadius: BorderRadius.circular(15),
      dialogBackgroundColor: AppColors.mainColor
    
    );
              
    
  }

  
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stepper( 
                        //physics: NeverScrollableScrollPhysics(),
                        type: StepperType.horizontal,
                        steps: [

                          //1. 0ne Way
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
                                  height: Dimensions.height10,),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      
                                      keyboardType: TextInputType.name,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        
                                        label: HeadingText(text: "From",size: Dimensions.font26,fontWeight: FontWeight.bold,color: AppColors.activeIcon,),
                                        floatingLabelBehavior: FloatingLabelBehavior.always,
                                        hintStyle: TextStyle(color: AppColors.activeIcon,fontFamily: "Heading",fontSize: Dimensions.font20,fontWeight: FontWeight.bold),
                                        hintText: "Flying From",
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
                                        hintText: "Flying To",
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                    padding: EdgeInsets.only(left:Dimensions.height5,right: Dimensions.height5,bottom: Dimensions.height10,top: Dimensions.height5),
                                    child: SizedBox(
                                      width: Dimensions.height20*8.2,
                                      child: InkWell(
                                        onTap: () => buildCalendarDialogButton(),
                                        child: TextField(
                                          
                                          keyboardType: TextInputType.datetime,
                                          enabled: false,
                                          
                                          
                                          decoration: InputDecoration(
                                            
                                            label: HeadingText(text: "Departure",size: Dimensions.font20,fontWeight: FontWeight.bold,color: AppColors.activeIcon,),
                                            floatingLabelBehavior: FloatingLabelBehavior.always,
                                            hintStyle: TextStyle(color: AppColors.activeIcon,fontFamily: "Heading",fontSize: Dimensions.font16,fontWeight: FontWeight.bold),
                                            hintText: "DD/MM/YY",
                                            prefixIcon: Icon(
                                              LineIcons.calendar,
                                              size: Dimensions.height30,
                                              color: AppColors.activeIcon,),
                                              
                                            
                                            disabledBorder: OutlineInputBorder(
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
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(left:Dimensions.height5,right: Dimensions.height5,bottom: Dimensions.height10,top: Dimensions.height5),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                    padding: EdgeInsets.only(left:Dimensions.height5,right: Dimensions.height5,bottom: Dimensions.height10,top: Dimensions.height5),
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
                                    padding: EdgeInsets.only(left:Dimensions.height5,right: Dimensions.height5,bottom: Dimensions.height10,top: Dimensions.height5),
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
                                  
                                  
                                  Padding(
                                    padding: EdgeInsets.only(left:Dimensions.height5,right: Dimensions.height5,bottom: Dimensions.height20,top: Dimensions.height5),
                                    child: ElevatedButton(onPressed: () {
                                      
                                    },
                                    
                                    style: mainButton, child: SubHeadingText(text: "Search",size: Dimensions.font26,fontWeight: FontWeight.normal,),
                                      
                                  
                                    
                                    ),
                                  ),
                                  
                             
                             
                              ],
                            ),
                          )
                         
                          ),
                          
                          //2. Round
                          Step(title: HeadingText(text: "Round",size: Dimensions.font20,color: AppColors.activeIcon,fontWeight: FontWeight.bold,), 
                          isActive: _currentIndex==1,
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
                                  height: Dimensions.height10,),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      
                                      keyboardType: TextInputType.name,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        
                                        label: HeadingText(text: "From",size: Dimensions.font26,fontWeight: FontWeight.bold,color: AppColors.activeIcon,),
                                        floatingLabelBehavior: FloatingLabelBehavior.always,
                                        hintStyle: TextStyle(color: AppColors.activeIcon,fontFamily: "Heading",fontSize: Dimensions.font20,fontWeight: FontWeight.bold),
                                        hintText: "Flying From",
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
                                        hintText: "Flying To",
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                    padding: EdgeInsets.only(left:Dimensions.height5,right: Dimensions.height5,bottom: Dimensions.height10,top: Dimensions.height5),
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
                                    padding: EdgeInsets.only(left:Dimensions.height5,right: Dimensions.height5,bottom: Dimensions.height10,top: Dimensions.height5),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                    padding: EdgeInsets.only(left:Dimensions.height5,right: Dimensions.height5,bottom: Dimensions.height10,top: Dimensions.height5),
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
                                    padding: EdgeInsets.only(left:Dimensions.height5,right: Dimensions.height5,bottom: Dimensions.height10,top: Dimensions.height5),
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
                                  
                                  
                                  Padding(
                                    padding: EdgeInsets.only(left:Dimensions.height5,right: Dimensions.height5,bottom: Dimensions.height20,top: Dimensions.height5),
                                    child: ElevatedButton(onPressed: () async {
                                      
                                      Get.toNamed(RoutesHelper.getISearchResult());
                                      
                                    },
                                    
                                    style: mainButton, child: SubHeadingText(text: "Search",size: Dimensions.font26,fontWeight: FontWeight.normal,),
                                      
                                  
                                    
                                    ),
                                  ),
                                  
                             
                             
                              ],
                            ),
                          )
                         
                          ),
                          
                          //3.Tours
                          Step(title: HeadingText(text: "Tours",size: Dimensions.font20,color: AppColors.activeIcon,fontWeight: FontWeight.bold,), 
                          isActive: _currentIndex==2,
                          content: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: HeadingText(text: "Popular Routes",fontWeight: FontWeight.w900,size: Dimensions.height30,),
                              ),
                              //LinearProgressIndicator(minHeight: Dimensions.height5/2),
                              
                              SizedBox(
                                
                            width: double.maxFinite,
                           height: Dimensions.height20*13,
                           
                            child:ListView.builder(
                
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                physics: const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                
                itemBuilder: (context,index){
                return Container(
                  width: Dimensions.height20*9,
                  margin: EdgeInsets.only(right: Dimensions.width10),
                  //color: AppColors.mainColor,
                  child: Stack(
                    children: [

                      Positioned(
                        top: Dimensions.height15,
                        left: 0,
                        right: 0,
                        child: Container(
                      height: Dimensions.height20*11.5,
                      
                      decoration: BoxDecoration(color: AppColors.dark,
                      backgroundBlendMode: BlendMode.darken,
                      borderRadius: BorderRadius.circular(Dimensions.height20)
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: Dimensions.height20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: Dimensions.height20*7,),
                              HeadingText(text: "SYDNEY TO DUBAI",size: Dimensions.font16,color: Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold,),
                              SizedBox(height: Dimensions.height5,),
                              SubHeadingText(text: "From: 14 hours 08 minutes"),
                              SizedBox(height: Dimensions.height5,),
                              ElevatedButton(onPressed: () {
                                
                              }, child: SubHeadingText(text: "Book Now",size: Dimensions.font16,fontWeight: FontWeight.w400,),style: smallButton,)
                              
                              
                            
                            ],
                          ),
                        ),
                    
                    )
                  ),
                    
                      Positioned(
                        
                        left: Dimensions.height15/2,
                        child: Card(
                      color: Colors.transparent,
                      elevation: 50,
                      child: Container(
                        height: Dimensions.height20*7,
                        width: Dimensions.width20*7,
                        decoration: BoxDecoration(color: index.isEven? Colors.black:Colors.amber,
                        borderRadius: BorderRadius.circular(Dimensions.height15),
                          image: DecorationImage(image: AssetImage("assets/images/routeimg5.png",),
                          fit: BoxFit.cover,
                          )
                          ),
                          
                      ),
                    ),
                    
                  ),
                  
                  
                    ],
                  )
                );

                
              }
              ),
           
            
            
                          ),
                          
                          Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: HeadingText(text: "Popular Routes",fontWeight: FontWeight.w900,size: Dimensions.height30,),
                              ),
                              //LinearProgressIndicator(minHeight: Dimensions.height5/2),
                              
                              SizedBox(
                                
                            width: double.maxFinite,
                           height: Dimensions.height20*13,
                           
                            child:ListView.builder(
                
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                physics: const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                
                itemBuilder: (context,index){
                return Container(
                  width: Dimensions.height20*9,
                  margin: EdgeInsets.only(right: Dimensions.width10),
                  //color: AppColors.mainColor,
                  child: Stack(
                    children: [

                      Positioned(
                        top: Dimensions.height15,
                        left: 0,
                        right: 0,
                        child: Container(
                      height: Dimensions.height20*11.5,
                      
                      decoration: BoxDecoration(color: AppColors.dark,
                      backgroundBlendMode: BlendMode.darken,
                      borderRadius: BorderRadius.circular(Dimensions.height20)
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: Dimensions.height20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: Dimensions.height20*7,),
                              HeadingText(text: "SYDNEY TO DUBAI",size: Dimensions.font16,color: Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold,),
                              SizedBox(height: Dimensions.height5,),
                              SubHeadingText(text: "From: 14 hours 08 minutes"),
                              SizedBox(height: Dimensions.height5,),
                              ElevatedButton(onPressed: () {
                                
                              },style: smallButton, child: SubHeadingText(text: "Book Now",size: Dimensions.font16,fontWeight: FontWeight.w400,),)
                              
                              
                            
                            ],
                          ),
                        ),
                    
                    )
                  ),
                    
                      Positioned(
                        
                        left: Dimensions.height15/2,
                        child: Card(
                      color: Colors.transparent,
                      elevation: 50,
                      child: Container(
                        height: Dimensions.height20*7,
                        width: Dimensions.width20*7,
                        decoration: BoxDecoration(color: index.isEven? Colors.black:Colors.amber,
                        borderRadius: BorderRadius.circular(Dimensions.height15),
                          image: DecorationImage(image: AssetImage("assets/images/routeimg1.png",),
                          fit: BoxFit.cover,
                          )
                          ),
                          
                      ),
                    ),
                    
                  ),
                  
                  
                    ],
                  )
                );

                
              }
              ),
           
            
            
                          ),
                          
                          
                          
                            ],
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