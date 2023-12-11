import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceapp/Widgets/genericTextWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Controller/AuthController.dart';

class EditPayment extends StatelessWidget {
  const EditPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        init: AuthController(),
        builder: (AuthController _) => Scaffold(
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/icons/back.png",
                        height: 5.h,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      genericTextWidget("Payment"),
                      SizedBox(
                        height: .5.h,
                      ),
                      InkWell(
                        onTap: () {
                          _.currentindex = 0;
                          _.update();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 9.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                  color: _.currentindex == 0
                                      ? Color(0xffFFFFFF)
                                      : Color(0xffF6F6F6),
                                  border: Border.all(
                                      color: _.currentindex == 2
                                          ? Color(0xffF6F6F6)
                                          : Color(0xffF6F6F6),
                                      width: .6.w),
                                  borderRadius: BorderRadius.circular(27),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xfff2f2ff),
                                      spreadRadius: -1,
                                      blurRadius: 22,
                                      offset: Offset(0, 9),
                                    ),
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      "assets/logo/pay.png",
                                      height: 2.5.h,
                                    ),
                                    genericTextWidget("2121 6352 8464****",
                                        color: _.currentindex == 0
                                            ? Color(0xff3B3B3B)
                                            : Color(0xffc4c4c5),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400),
                                  ],
                                ),
                              )),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _.currentindex = 1;
                          _.update();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 9.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                color: _.currentindex == 1
                                    ? Color(0xffFFFFFF)
                                    : Color(0xffF6F6F6),
                                border: Border.all(
                                    color: _.currentindex == 2
                                        ? Color(0xffF6F6F6)
                                        : Color(0xffF6F6F6),
                                    width: .6.w),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xfff2f2ff),
                                    spreadRadius: -1,
                                    blurRadius: 22,
                                    offset: Offset(0, 9),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(27),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      "assets/logo/visa.png",
                                      height: 5.4.h,
                                    ),
                                    genericTextWidget("2121 6352 8464****",
                                        color: _.currentindex == 1
                                            ? Color(0xff3B3B3B)
                                            : Color(0xffc4c4c5),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400),
                                  ],
                                ),
                              )),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _.currentindex = 2;
                          _.update();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 9.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: _.currentindex == 2
                                          ? Color(0xffF6F6F6)
                                          : Color(0xffF6F6F6),
                                      width: .6.w),
                                  color: _.currentindex == 2
                                      ? Color(0xffFFFFFF)
                                      : Color(0xffF6F6F6),
                                  borderRadius: BorderRadius.circular(27),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xfff2f2ff),
                                      spreadRadius: -1,
                                      blurRadius: 22,
                                      offset: Offset(0, 9),
                                    ),
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      "assets/logo/payoneer.png",
                                      height: 3.5.h,
                                    ),
                                    genericTextWidget("2121 6352 8464****",
                                        color: _.currentindex == 2
                                            ? Color(0xff3B3B3B)
                                            : Color(0xffc4c4c5),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400),
                                  ],
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ));
  }
}
