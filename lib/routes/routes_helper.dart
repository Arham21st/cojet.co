import 'package:cojet/screens/flights/flight_details.dart';
import 'package:cojet/screens/flights/search_result.dart';
import 'package:cojet/screens/user%20info/personal_info.dart';
import 'package:get/get.dart';

import '../screens/home/home_page.dart';
import '../screens/splash/splash_screen.dart';

class RoutesHelper {
  static const String splash = '/splash-page';
  static const String initial = '/';
  static const String result = '/search-result';
  static const String details = '/flight-details';
  static const String userInfo = '/personal-info';
  // static const String popularItems = '/popular-Items';
  // static const String recommendedItems = '/recommended-Items';
  // static const String cartPage = '/cart-page';

  static String getSplash() => splash;
  static String getInitial() => initial;
  static String getISearchResult() => result;
  static String getFlightDetails() => details;
  static String getPersonalInfo() => userInfo;
  // static String getPopularProducts(int pageId, String page) => "$popularItems?pageId=$pageId&page=$page";
  // static String getRecommendedProducts(int pageId, String page) =>'$recommendedItems?pageId=$pageId&page=$page';
  // static String getCartPage() => '$cartPage';

  static List<GetPage> routes = [
    GetPage(name: splash, page: () => const SplashScreen()),
    GetPage(name: initial, page: () => const HomePage()),
    GetPage(name: result, page: () => const SearchResult()),
    GetPage(name: details, page: () => const FlightDetails()),
    GetPage(name: userInfo, page: () => const PersonalInfo()),
    
  
    // GetPage(
    //   name: popularItems, page: () {
    //     var pageId=Get.parameters["pageId"];
    //     var page=Get.parameters["page"];
    //     return popularProducts(pageId: int.parse(pageId!), page: page!);
    //   }
    // ),

    // GetPage(
    //   name: recommendedItems, page: () {
    //     var pageId=Get.parameters["pageId"];
    //     var page = Get.parameters["page"];
    //     return RecommendedProducts(pageId: int.parse(pageId!),page:page!);
    //   }
    // ),
    
    // GetPage(
    //     name: cartPage,
    //     page: () {
    //       return const CartPage();
    //     },
    //     transition: Transition.fadeIn),
  ];
}