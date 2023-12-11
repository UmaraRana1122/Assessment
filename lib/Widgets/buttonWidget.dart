import 'package:flutter/material.dart';
import 'package:practiceapp/Widgets/genericTextWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'onTap.dart';

Widget buttonConatiner(String text, {Function? ontap}) {
  return onPress(
    onTap: ontap,
    child: Container(
      height: 7.h,
      width: 90.w,
      decoration: BoxDecoration(
          color: Color(0xff3E9892), borderRadius: BorderRadius.circular(40)),
      child: Align(
          child: genericTextWidget(text,
              color: Colors.white,
              fontSize: 17.sp,
              fontWeight: FontWeight.w500)),
    ),
  );
}
