import 'package:flutter/material.dart';
import 'package:practiceapp/Widgets/genericTextWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget favourateWidget(String isImage, String text) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 12.h,
      width: 100.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Color(0xfff2f2ff),
              spreadRadius: -1,
              blurRadius: 22,
              offset: Offset(0, 9),
            ),
          ]),
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
            Container(
              height: 3.5.h,
              width: 22.w,
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
                child: genericTextWidget(text,
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
