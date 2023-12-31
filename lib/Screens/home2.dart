import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceapp/Widgets/genericTextWidget.dart';
import 'package:practiceapp/Widgets/popularWidget.dart';
import 'package:practiceapp/Widgets/searchWidget.dart';
import 'package:practiceapp/Widgets/typeFilterWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Controller/AuthController.dart';

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        init: AuthController(),
        builder: (AuthController _) => Scaffold(
              body: Stack(
                children: [
                  Image.asset("assets/images/pattern.png"),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                genericTextWidget("Find Your \nFavourate Food",
                                    fontSize: 21.sp),
                                Container(
                                  height: 7.h,
                                  width: 15.w,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(16)),
                                  child: Align(
                                    child: Image.asset(
                                      "assets/icons/notification.png",
                                      height: 4.h,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            searchWidget(),
                            SizedBox(
                              height: 1.h,
                            ),
                            Row(
                              children: [
                                typeFilterWidget(30.w, ">10 Km "),
                                SizedBox(
                                  width: 6.w,
                                ),
                                typeFilterWidget(25.w, "Soup "),
                              ],
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            genericTextWidget("Popular Resturent"),
                            SizedBox(
                              height: 1.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                popularWidget(
                                  "Vegan Resto",
                                  "12 Mins",
                                  "assets/images/vegan.png",
                                ),
                                popularWidget(
                                  "Healthy Food",
                                  "8 Mins",
                                  "assets/images/healthy.png",
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                popularWidget(
                                  "Good Food",
                                  "12 Mins",
                                  "assets/images/good.png",
                                ),
                                popularWidget(
                                  "Smart Resto",
                                  "8 Mins",
                                  "assets/images/samrt.png",
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                popularWidget(
                                  "Good Food",
                                  "12 Mins",
                                  "assets/images/5.png",
                                ),
                                popularWidget(
                                  "Smart Resto",
                                  "8 Mins",
                                  "assets/images/6.png",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ));
  }
}
