import 'package:flutter/material.dart';
import 'package:practiceapp/Widgets/genericTextWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget orderWidget(String isImage) {
  return Padding(
    padding: const EdgeInsets.all(0.0),
    child: Container(
      height: 12.h,
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
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          children: [
            Image.asset(
              isImage,
              height: 9.h,
            ),
            SizedBox(
              width: 3.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                genericTextWidget("Spicy fresh crab",
                    fontSize: 15.sp, fontWeight: FontWeight.w600),
                SizedBox(
                  height: .4.h,
                ),
                genericTextWidget("Waroenk Kita",
                    color: Color(0xff3B3B3B),
                    fontWeight: FontWeight.w300,
                    fontSize: 13.sp),
                SizedBox(
                  height: 1.4.h,
                ),
                genericTextWidget("\$35",
                    color: Color(0xff53E88B), fontSize: 18.sp),
              ],
            ),
            Spacer(),
            Image.asset(
              "assets/images/minus.png",
              height: 3.h,
            ),
            SizedBox(
              width: 4.w,
            ),
            genericTextWidget("1",
                fontSize: 16.sp, fontWeight: FontWeight.w600),
            SizedBox(
              width: 4.w,
            ),
            Image.asset(
              "assets/images/add.png",
              height: 3.h,
            ),
          ],
        ),
      ),
    ),
  );
}
