import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceapp/Widgets/favourate.dart';
import 'package:practiceapp/Widgets/favouriteWidget.dart';
import 'package:practiceapp/Widgets/genericTextWidget.dart';
import 'package:practiceapp/Widgets/searchWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Controller/AuthController.dart';

class YourOrder extends StatelessWidget {
  const YourOrder({super.key});

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
                              )
                            ],
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          searchWidget(),
                          favourateWidget(
                            "assets/images/food1.png","Process"
                          ),
                          favourateWidget(
                            "assets/images/food2.png", "Process"
                          ),
                          favourateWidget2(
                            "assets/images/food3.png",
                          ),
                          favourateWidget2(
                            "assets/images/food3.png",
                          ),
                          Spacer(),
                          Container(
                            height: 6.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xff46F889),
                                  Color(0xff15BE77),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.topRight,
                              ),
                            ),
                            child: Align(
                              child: genericTextWidget("Check out",
                                  color: Colors.white,
                                  fontSize: 15.5.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ));
  }
}
