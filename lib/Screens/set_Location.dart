import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceapp/Screens/setLoacation.dart';
import 'package:practiceapp/Screens/verification_Code.dart';
import 'package:practiceapp/Widgets/genericTextWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Controller/AuthController.dart';

class SetLocation extends StatelessWidget {
  const SetLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        init: AuthController(),
        builder: (AuthController _) => Scaffold(
              backgroundColor: Colors.white,
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
                          Image.asset(
                            "assets/icons/back.png",
                            height: 5.h,
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          genericTextWidget("Set Your Location"),
                          SizedBox(
                            height: 1.h,
                          ),
                          genericTextWidget(
                              "This data will be dispalyed in your account profile for security",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w300),
                          SizedBox(
                            height: 3.h,
                          ),
                          Container(
                            height: 15.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xfff2f2ff),
                                    spreadRadius: -1,
                                    blurRadius: 22,
                                    offset: Offset(0, 9),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(17)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 16),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/icons/location.png",
                                        height: 4.h,
                                      ),
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      genericTextWidget("Your Location",
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w600)
                                    ],
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Get.to(() => MapSample());
                                    },
                                    child: Container(
                                      height: 5.h,
                                      width: 100.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffF6F6F6),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Align(
                                          child: genericTextWidget(
                                              "Set Location",
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w400)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          Center(
                            child: InkWell(
                              onTap: () {
                                Get.to(() => VerificationCode());
                              },
                              child: Container(
                                height: 7.h,
                                width: 43.w,
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
                                  child: genericTextWidget("Next",
                                      color: Colors.white,
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
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
