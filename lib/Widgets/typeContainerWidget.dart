import 'package:flutter/material.dart';
import 'package:practiceapp/Widgets/genericTextWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget typeWidget(
  double width,
  String text,
) {
  return Container(
    height: 6.8.h,
    width: width,
    decoration: BoxDecoration(
        color: Color(0xfffff7e6), borderRadius: BorderRadius.circular(20)),
    child: Align(
      child: genericTextWidget(text,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          color: Color(0xffDA6317)),
    ),
  );
}
