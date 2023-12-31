import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceapp/Widgets/confirmOrderWidget.dart';
import 'package:practiceapp/Widgets/genericTextWidget.dart';
import 'package:practiceapp/Widgets/paymentWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Controller/AuthController.dart';

class ConfirmOrder extends StatelessWidget {
  const ConfirmOrder({super.key});

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
                          InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Image.asset(
                              "assets/icons/back.png",
                              height: 5.h,
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          genericTextWidget("Confirm Order"),
                          SizedBox(
                            height: .5.h,
                          ),
                          confirmOrderWidget("Deliver To",
                              "4517 Washington Ave.Manchestor \nKentucky 39495"),
                          SizedBox(
                            height: 2.h,
                          ),
                          InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                    isDismissible: true,
                                    backgroundColor: Colors.transparent,
                                    isScrollControlled: true,
                                    context: context,
                                    builder: ((context) =>
                                        DraggableScrollableSheet(
                                            maxChildSize: 0.50,
                                            minChildSize: 0.3,
                                            initialChildSize: 0.30,
                                            builder: (context,
                                                ScrollController scroll) {
                                              return ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(25),
                                                    topRight:
                                                        Radius.circular(25),
                                                  ),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      gradient: LinearGradient(
                                                        colors: [
                                                          Color(0xff46F889),
                                                          Color(0xff15BE77),
                                                        ],
                                                        begin:
                                                            Alignment.topLeft,
                                                        end: Alignment.topRight,
                                                      ),
                                                    ),
                                                    child: StatefulBuilder(
                                                        builder: (context,
                                                            innerstate) {
                                                      return SafeArea(
                                                        bottom: false,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  vertical: 20,
                                                                  horizontal:
                                                                      15),
                                                          child: Column(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                        8.0),
                                                                child: Column(
                                                                  children: [
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        genericTextWidget(
                                                                            "Sub-Total",
                                                                            color:
                                                                                Colors.white,
                                                                            fontSize: 17.sp,
                                                                            fontWeight: FontWeight.w500),
                                                                        genericTextWidget(
                                                                            "\$120",
                                                                            color:
                                                                                Colors.white,
                                                                            fontSize: 17.sp,
                                                                            fontWeight: FontWeight.w500),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        genericTextWidget(
                                                                            "Delivery Charge",
                                                                            color:
                                                                                Colors.white,
                                                                            fontSize: 17.sp,
                                                                            fontWeight: FontWeight.w500),
                                                                        genericTextWidget(
                                                                            "\$10",
                                                                            color:
                                                                                Colors.white,
                                                                            fontSize: 17.sp,
                                                                            fontWeight: FontWeight.w500),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        genericTextWidget(
                                                                            "Discount",
                                                                            color:
                                                                                Colors.white,
                                                                            fontSize: 17.sp,
                                                                            fontWeight: FontWeight.w500),
                                                                        genericTextWidget(
                                                                            "\$20",
                                                                            color:
                                                                                Colors.white,
                                                                            fontSize: 17.sp,
                                                                            fontWeight: FontWeight.w500),
                                                                      ],
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          3.h,
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        genericTextWidget(
                                                                            "Total",
                                                                            color:
                                                                                Colors.white,
                                                                            fontSize: 17.sp,
                                                                            fontWeight: FontWeight.w500),
                                                                        genericTextWidget(
                                                                            "\$150",
                                                                            color:
                                                                                Colors.white,
                                                                            fontSize: 17.sp,
                                                                            fontWeight: FontWeight.w500),
                                                                      ],
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          3.h,
                                                                    ),
                                                                    Container(
                                                                      height:
                                                                          6.h,
                                                                      width:
                                                                          100.w,
                                                                      decoration: BoxDecoration(
                                                                          color: Colors
                                                                              .white,
                                                                          borderRadius:
                                                                              BorderRadius.circular(16)),
                                                                      child: Align(
                                                                          child: genericTextWidget(
                                                                              "Place Order",
                                                                              color: Color(0xff53E88B),
                                                                              fontSize: 17.sp,
                                                                              fontWeight: FontWeight.w600)),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    }),
                                                  ));
                                            })));
                              },
                              child: paymentWidget()),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ));
  }
}
