import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget textFeildWidget(
  String text,
  String isImage,
) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xfff2f2ff),
            spreadRadius: -1,
            blurRadius: 22,
            offset: Offset(0, 9),
          ),
        ],
      ),
      child: TextFormField(
        cursorColor: Color(0xff4B5768),
        style: GoogleFonts.quicksand(
          color: Color(0xff4B5768),
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xffFFFFFF),
          contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffF4F4F4),
              width: .5.w,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffF4F4F4),
              width: .5.w,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10),
            child: Image.asset(
              isImage,
              height: .4.h,
              width: 2.w,
            ),
          ),
          hintText: text,
          hintStyle: GoogleFonts.quicksand(
            color: Color(0xff808B95),
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    ),
  );
}
