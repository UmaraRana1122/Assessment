import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceapp/Widgets/genericTextWidget.dart';
import 'package:practiceapp/Widgets/searchWidget.dart';
import 'package:practiceapp/Widgets/typeContainerWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Controller/AuthController.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

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
                          genericTextWidget("Type"),
                          SizedBox(
                            height: 1.h,
                          ),
                          Row(
                            children: [
                              typeWidget(31.w, "Restaurant"),
                              SizedBox(
                                width: 6.w,
                              ),
                              typeWidget(25.w, "Menu"),
                            ],
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          genericTextWidget("Location"),
                          SizedBox(
                            height: 2.h,
                          ),
                          Row(
                            children: [
                              typeWidget(22.w, "1 Km"),
                              SizedBox(
                                width: 4.w,
                              ),
                              typeWidget(25.w, ">10 Km"),
                              SizedBox(
                                width: 4.w,
                              ),
                              typeWidget(25.w, "<10 Km"),
                            ],
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          genericTextWidget("Food"),
                          SizedBox(
                            height: 2.h,
                          ),
                          Row(
                            children: [
                              typeWidget(22.w, "Cake"),
                              SizedBox(
                                width: 4.w,
                              ),
                              typeWidget(25.w, "Soup"),
                              SizedBox(
                                width: 4.w,
                              ),
                              typeWidget(32.w, "Main Course"),
                            ],
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Row(
                            children: [
                              typeWidget(30.w, "Appetizer"),
                              SizedBox(
                                width: 6.w,
                              ),
                              typeWidget(25.w, "Dessert"),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ));
  }
}
