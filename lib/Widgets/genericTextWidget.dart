import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget genericTextWidget(String text,
    {fontSize, FontWeight? fontWeight, Color? color}) {
  return Text(
    text,
    textAlign: TextAlign.start,
    style: GoogleFonts.inter(
        color: color ?? Colors.black,
        fontSize: fontSize ?? 20.sp,
        fontWeight: fontWeight ?? FontWeight.w700),
  );
}
