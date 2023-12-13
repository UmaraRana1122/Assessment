import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceapp/Screens/via_method.dart';
import 'package:practiceapp/Widgets/genericTextWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Controller/AuthController.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({super.key});

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
                          genericTextWidget(
                              "Enter 4-digit \nVerification Code "),
                          SizedBox(
                            height: 1.h,
                          ),
                          genericTextWidget(
                              "Code sent to +6282045****.This code will expire in 01:30",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w300),
                          SizedBox(
                            height: 3.h,
                          ),
                          Container(
                            height: 10.h,
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
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      genericTextWidget("1",
                                          fontSize: 22.sp,
                                          color: Color(0xff09051C),
                                          fontWeight: FontWeight.w600),
                                      genericTextWidget("9",
                                          fontSize: 22.sp,
                                          color: Color(0xff09051C),
                                          fontWeight: FontWeight.w600),
                                      genericTextWidget("2",
                                          fontSize: 22.sp,
                                          color: Color(0xff09051C),
                                          fontWeight: FontWeight.w600),
                                      genericTextWidget("3",
                                          fontSize: 22.sp,
                                          color: Color(0xff09051C),
                                          fontWeight: FontWeight.w600),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          Center(
                            child: InkWell(
                              onTap: () {
                                Get.to(() => ViaMethod());
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
