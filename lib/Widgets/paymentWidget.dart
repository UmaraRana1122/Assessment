import 'package:flutter/material.dart';
import 'package:practiceapp/Widgets/genericTextWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget paymentWidget() {
  return Container(
      height: 15.h,
      width: 100.w,
      decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          border: Border.all(color: Color(0xffF6F6F6), width: .6.w),
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
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                genericTextWidget("Payment Method",
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff3B3B3B)),
                genericTextWidget("Edit",
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff53E88B)),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/logo/pay.png",
                  height: 2.5.h,
                ),
                genericTextWidget("2121 6352 8464****",
                    color: Color(0xff3B3B3B),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
              ],
            )
          ],
        ),
      ));
}
