import 'package:flutter/material.dart';
import 'package:practiceapp/Widgets/genericTextWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget popularWidget(String text, String text1, String isImage) {
  return Container(
    height: 25.h,
    width: 43.w,
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
        borderRadius: BorderRadius.circular(15)),
    child: Column(
      children: [
        SizedBox(
          height: 5.h,
        ),
        Image.asset(
          isImage,
          height: 10.h,
        ),
        SizedBox(
          height: 2.h,
        ),
        genericTextWidget(
        text,
          fontSize: 17.sp,
        ),
        SizedBox(
          height: 1.h,
        ),
        genericTextWidget(text1,
            fontSize: 14.sp, fontWeight: FontWeight.w300)
      ],
    ),
  );
}
