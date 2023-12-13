import 'package:flutter/material.dart';
import 'package:practiceapp/Widgets/genericTextWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget testimonialWidget(String isImage) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 17.h,
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
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: Row(
          children: [
            Image.asset(
              isImage,
              height: 10.h,
            ),
            SizedBox(
              width: 3.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 1.5.h,
                ),
                genericTextWidget("Dianne Rusell",
                    fontSize: 15.sp, fontWeight: FontWeight.w600),
                SizedBox(
                  height: .4.h,
                ),
                genericTextWidget("12 April 2021",
                    color: Color(0xff3B3B3B),
                    fontWeight: FontWeight.w300,
                    fontSize: 13.sp),
                SizedBox(
                  height: 1.4.h,
                ),
                genericTextWidget(
                    "This is great.So delicious! \nYou must here,with \nyour family...",
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp),
              ],
            ),
            Spacer(),
            Image.asset(
              "assets/images/5start.png",
              height: 4.h,
            )
          ],
        ),
      ),
    ),
  );
}
