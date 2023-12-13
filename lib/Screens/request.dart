import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceapp/Widgets/genericTextWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Controller/AuthController.dart';

class RequestScreen extends StatelessWidget {
  const RequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        init: AuthController(),
        builder: (AuthController _) => Scaffold(
              body: Stack(
                children: [
                  Image.asset("assets/images/info.png"),
                  Column(
                    children: [
                      SizedBox(
                        height: 30.h,
                        width: 80.w,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  genericTextWidget("Sub-Total",
                                      color: Colors.white,
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w500),
                                  genericTextWidget("\$120",
                                      color: Colors.white,
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w500),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  genericTextWidget("Delivery Charge",
                                      color: Colors.white,
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w500),
                                  genericTextWidget("\$10",
                                      color: Colors.white,
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w500),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  genericTextWidget("Discount",
                                      color: Colors.white,
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w500),
                                  genericTextWidget("\$20",
                                      color: Colors.white,
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w500),
                                ],
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  genericTextWidget("Total",
                                      color: Colors.white,
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w500),
                                  genericTextWidget("\$150",
                                      color: Colors.white,
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w500),
                                ],
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Container(
                                height: 6.h,
                                width: 100.w,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16)),
                                child: Align(
                                    child: genericTextWidget("Place Order",
                                        color: Color(0xff53E88B),
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w600)),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ));
  }
}
