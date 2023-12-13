import 'package:flutter/material.dart';
import 'package:practiceapp/Widgets/genericTextWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget exploreWidget(String isImage,
String text,
String text1,
String text2,

) {
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  genericTextWidget(text,
                      fontSize: 16.sp, fontWeight: FontWeight.w600),
                  SizedBox(
                    height: .4.h,
                  ),
                  genericTextWidget(text1,
                      color: Color(0xff3B3B3B),
                      fontWeight: FontWeight.w300,
                      fontSize: 14.5.sp),
                ],
              ),
            ),
            Spacer(),
            genericTextWidget(text2, color: Color(0xffFEAD1D), fontSize: 18.sp),
          ],
        ),
      ),
    ),
  );
}
