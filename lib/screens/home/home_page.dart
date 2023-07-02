import 'package:cojet/screens/flights/flight_details.dart';
import 'package:cojet/screens/home/home_page_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:cojet/screens/user info/my_bookings.dart';

import '../../utility/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PersistentTabController _controller;
  
  List Pages=[
    //const HomePageBody(),
    // Center(child: BigText(text: "page 2")),
    // Center(child: BigText(text: "page 3")),
    // Center(child: BigText(text: "page 4"))
    const HomePageBody(),
    const MyBookings(),
    const Center(child: Text("Page3"),),
    const Center(child: Text("Page4"),)
  ];

  void onTapNav(int index){
    setState(() {
    });
  }
 

@override
void initState(){
  super.initState();
  _controller = PersistentTabController(initialIndex: 0); 
}

List<Widget> _buildScreens() {
        return [
          // const HomePageBody(),
          // Center(child: BigText(text: "page 2")),
          // Center(child: BigText(text: "page 3")),
          // Center(child: BigText(text: "page 4"))
          const HomePageBody(),
          const MyBookings(),
          const Center(child: Text("Page3"),),
          const Center(child: Text("Page4"),)
        ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
        return [
            PersistentBottomNavBarItem(
                icon: const Icon(CupertinoIcons.home),
                title: ("Home"),
                activeColorPrimary: const Color.fromARGB(255, 54, 38, 32),
                inactiveColorPrimary: const Color.fromRGBO(238, 238, 238, 1),
            ),
            PersistentBottomNavBarItem(
                icon: const Icon(CupertinoIcons.doc_chart),
                title: ("Bookings"),
                activeColorPrimary: const Color.fromARGB(255, 54, 38, 32),
                inactiveColorPrimary: const Color.fromRGBO(238, 238, 238, 1),
            ),
            PersistentBottomNavBarItem(
                icon: const Icon(CupertinoIcons.envelope),
                title: ("Inbox"),
                activeColorPrimary: const Color.fromARGB(255, 54, 38, 32),
                inactiveColorPrimary: const Color.fromRGBO(238, 238, 238, 1),
            ),
            PersistentBottomNavBarItem(
                icon: const Icon(CupertinoIcons.person),
                title: ("Profile"),
                activeColorPrimary: const Color.fromARGB(255, 54, 38, 32),
                inactiveColorPrimary: const Color.fromRGBO(238, 238, 238, 1),
            ),
        ];
    }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: AppColors.mainColor, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        // decoration: NavBarDecoration(
        //  // borderRadius: BorderRadius.circular(10.0),
        //   //colorBehindNavBar: Colors.white,
        // ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties( // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style6, // Choose the nav bar style with this property.
    );
  }
}