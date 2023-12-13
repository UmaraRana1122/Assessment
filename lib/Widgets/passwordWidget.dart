import 'package:flutter/material.dart';
import 'package:practiceapp/Widgets/genericTextWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget passwordWidget(String isImage, String text,String text1) {
  return Container(
    height: 11.h,
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
        borderRadius: BorderRadius.circular(17)),
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Image.asset(
            isImage,
            height: 5.h,
          ),
          SizedBox(
            width: 5.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              genericTextWidget(text1,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff828282)),
              Row(
                children: [
                  genericTextWidget("****",
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff000000)),
                  SizedBox(
                    width: 2.w,
                  ),
                  genericTextWidget("****",
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff000000)),
                  SizedBox(
                    width: 2.w,
                  ),
                  genericTextWidget(text,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000)),
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}
