// ignore_for_file: camel_case_types, prefer_const_constructors, file_names, unused_field

import 'package:feb10uiandapi/frontpart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Pres_Bottom_Nav_Bar extends StatefulWidget {
  const Pres_Bottom_Nav_Bar({super.key});

  @override
  State<Pres_Bottom_Nav_Bar> createState() => _Pres_Bottom_Nav_BarState();
}

class _Pres_Bottom_Nav_BarState extends State<Pres_Bottom_Nav_Bar> {
  late PersistentTabController controller;

  final _controller = PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreen() {
    return [
      FrontPartUi(),
      SafeArea(
        child: Center(
          child: Text(
            'CONCIERGE',
            style: TextStyle(color: Colors.red, fontSize: 30),
          ),
        ),
      ),
      SafeArea(
        child: Center(
          child: Text(
            'EVENTS/TICKETS',
            style: TextStyle(color: Colors.red, fontSize: 30),
          ),
        ),
      ),
      SafeArea(
        child: Center(
          child: Text(
            "WHAT'S NEW",
            style: TextStyle(color: Colors.red, fontSize: 30),
          ),
        ),
      ),
      SafeArea(
        child: Center(
          child: Text(
            'CLUBS',
            style: TextStyle(color: Colors.red, fontSize: 30),
          ),
        ),
      ),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItem() {
    return [
      PersistentBottomNavBarItem(
        icon: Image.asset(
          "assets/home.png",
          alignment: Alignment.bottomCenter,
          fit: BoxFit.fill,
        ),
        title: ("HOME"),
        textStyle: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
        activeColorPrimary: CupertinoColors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          "assets/services.png",
          alignment: Alignment.bottomCenter,
          fit: BoxFit.fill,
        ),
        title: ("CONCIERGE"),
        textStyle: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
        activeColorPrimary: CupertinoColors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          "assets/event.png",
          alignment: Alignment.bottomCenter,
          fit: BoxFit.cover,
        ),
        title: ("EVENTS/TICKETS"),
        textStyle: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
        activeColorSecondary: Colors.black,
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          "assets/account.png",
          alignment: Alignment.bottomCenter,
          fit: BoxFit.fill,
        ),
        title: ("WHAT'S NEW"),
        textStyle: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
        activeColorPrimary: CupertinoColors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          "assets/club.png",
          alignment: Alignment.bottomCenter,
          fit: BoxFit.fill,
        ),
        title: ("CLUBS"),
        textStyle: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
        activeColorPrimary: CupertinoColors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreen(),
      items: _navBarItem(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style15,
    );
  }
}
