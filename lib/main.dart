import 'package:cojet/screens/home/home_page_body.dart';
import 'package:cojet/screens/splash/splash_screen.dart';
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
    return  const GetMaterialApp(
      debugShowCheckedModeBanner: false,
     home: HomePage(),
      // initialRoute: RoutesHelper.getSplash(),
      // getPages: RoutesHelper.routes,
    

    );
  }
}

