
import 'package:cojet/screens/flights/boarding_pass_page.dart';
import 'package:cojet/screens/flights/search_result.dart';
import 'package:cojet/screens/home/home_page_body.dart';
import 'package:cojet/screens/splash/splash_screen.dart';
import 'package:cojet/utility/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/routes_helper.dart';
import 'screens/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //home: BoardingPass(),
      initialRoute: RoutesHelper.getSplash(),
      getPages: RoutesHelper.routes,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
    

    );
  }
}


