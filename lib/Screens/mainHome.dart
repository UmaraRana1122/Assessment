import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceapp/Screens/filter.dart';
import 'package:practiceapp/Screens/home.dart';
import 'package:practiceapp/Screens/profile.dart';
import 'package:practiceapp/Screens/your_Order.dart';
import 'package:practiceapp/Widgets/genericTextWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomNavigation extends StatefulWidget {
  static const title = 'salomon_bottom_bar';

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final PageStorageBucket bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavController>(
        init: NavController(),
        builder: (NavController con) => Scaffold(
              extendBody: true,
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.miniCenterDocked,
              floatingActionButton: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(17),
                  child: SalomonBottomBar(
                    backgroundColor: Color(0xffFFFFFF),
                    selectedColorOpacity: 1,
                    currentIndex: con.currentIndex,
                    onTap: (i) => setState(() => con.currentIndex = i),
                    items: [
                      SalomonBottomBarItem(
                        icon: Image.asset(
                          "assets/icons/home.png",
                          height: 2.2.h,
                        ),
                        title: genericTextWidget("Home".tr,
                            fontSize: 14.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                        selectedColor: Color(0xffC2F3D4),
                      ),
                      SalomonBottomBarItem(
                        icon: con.currentIndex == 1
                            ? Image.asset(
                                "assets/icons/user.png",
                                height: 2.2.h,
                              )
                            : Image.asset(
                                "assets/icons/pro.png",
                                height: 2.2.h,
                              ),
                        title: genericTextWidget("Profile".tr,
                            fontSize: 14.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                        selectedColor: Color(0xffC2F3D4),
                      ),
                      SalomonBottomBarItem(
                        icon: Image.asset(
                          "assets/icons/cart.png",
                          height: 2.9.h,
                        ),
                        title: genericTextWidget("Cart".tr,
                            fontSize: 14.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                        selectedColor: Color(0xffC2F3D4),
                      ),
                      SalomonBottomBarItem(
                        icon: Image.asset(
                          "assets/icons/chat2.png",
                          height: 2.2.h,
                        ),
                        title: genericTextWidget("Message".tr,
                            fontSize: 14.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                        selectedColor: Color(0xffC2F3D4),
                      ),
                    ],
                  ),
                ),
              ),
              resizeToAvoidBottomInset: false,
              body: PageStorage(
                  bucket: bucket,
                  child: Stack(children: [
                    con.currentIndex == 0
                        ? HomeScreen()
                        : con.currentIndex == 1
                            ? ProfileScreen()
                            : con.currentIndex == 2
                                ? YourOrder()
                                : con.currentIndex == 3
                                    ? FilterScreen()
                                    : Container(),
                  ])),
            ));
  }
}

class NavController extends GetxController {
  int currentTab = 0;
  int currentIndex = 0;
  Widget currentScreen = HomeScreen();
}
