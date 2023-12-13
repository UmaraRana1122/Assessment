import 'package:flutter/material.dart';
import 'package:practiceapp/Widgets/genericTextWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget confirmOrderWidget(
  String text1,
  String text2,
) {
  return Container(
    height: 15.h,
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
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              genericTextWidget(text1,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/icons/location.png",
                height: 4.5.h,
              ),
              SizedBox(
                width: 3.w,
              ),
              genericTextWidget(text2,
                  fontSize: 16.sp, fontWeight: FontWeight.w600),
            ],
          )
        ],
      ),
    ),
  );
}
