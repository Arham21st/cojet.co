import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../routes/routes_helper.dart';
import '../../utility/Dimensions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;
  // Future<void> _loadResources() async{
  //      await Get.find<PopularProductController>().getPopularProductList();
  //      await Get.find<RecommendedProductController>().getRecommendedProductList(); 
  //}     

  @override
  void initState(){
    super.initState();
    
    
    controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this)..forward();
    
    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.linear);

    Timer(
      const Duration(seconds: 4),
      () => Get.offNamed(RoutesHelper.getInitial())
    );

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 60, 6),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(scale: animation,
          child: Center(child: Image.asset("assets/images/logo.png",
          width: Dimensions.width25*8,color: Colors.white,))),
          // Center(child: Image.asset("assets/logo part 2.png",width: Dimensions.width25*8,))
        ],
      ),
    );
  }
}