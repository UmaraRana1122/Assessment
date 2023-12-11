import 'package:flutter/material.dart';
import 'package:practiceapp/Widgets/genericTextWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget favourateWidget2(String isImage) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 12.h,
      width: 100.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              isImage,
              height: 9.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                genericTextWidget("Spicy fresh crab",
                    fontSize: 16.sp, fontWeight: FontWeight.w600),
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
                    color: Color(0xffBEBEBE), fontSize: 18.sp),
              ],
            ),
            Container(
              height: 3.5.h,
              width: 26.w,
              decoration: BoxDecoration(
                color: Color(0xffBEBEBE),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Align(
                child: genericTextWidget("Process",
                    color: Colors.white,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
