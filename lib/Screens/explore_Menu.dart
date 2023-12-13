import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceapp/Widgets/exploreWidget.dart';
import 'package:practiceapp/Widgets/genericTextWidget.dart';
import 'package:practiceapp/Widgets/searchWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Controller/AuthController.dart';

class ExploreMenue extends StatelessWidget {
  const ExploreMenue({super.key});

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
                          genericTextWidget("Popular Menu"),
                          SizedBox(
                            height: 1.h,
                          ),
                          exploreWidget("assets/images/menu1.png",
                              "Herbal Pancake", "Warung Herbal", "\$7"),
                          exploreWidget("assets/images/menu2.png",
                              "Fruit Salad", "Wijie Resto", "\$5"),
                          exploreWidget("assets/images/menu3.png",
                              "Green Noddle", "Noodle Home", "\$15"),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ));
  }
}
