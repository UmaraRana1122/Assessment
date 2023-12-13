import 'package:flutter/material.dart';
import 'package:practiceapp/Widgets/genericTextWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget typeFilterWidget(
  double width,
  String text,
) {
  return Container(
      height: 6.8.h,
      width: width,
      decoration: BoxDecoration(
          color: Color(0xfffff7e6), borderRadius: BorderRadius.circular(20)),
      child: Align(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              genericTextWidget(text,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffDA6317)),
              SizedBox(
                width: 1.w,
              ),
              Icon(
                Icons.close,
                color: Color(0xffDA6317),
              )
            ],
          ),
        ),
      ));
}
