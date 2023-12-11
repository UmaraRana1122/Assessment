import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget searchWidget() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        width: 72.w,
        height: 8.h,
        child: TextFormField(
          cursorColor: Color(0xff4B5768),
          style: GoogleFonts.quicksand(
            color: Color(0xff4B5768),
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xfffff4ec),
            contentPadding:
                EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10),
              child: Image.asset(
                "assets/icons/search.png",
                height: .4.h,
                width: 2.w,
              ),
            ),
            hintText: "What to do you want to order?",
            hintStyle: GoogleFonts.quicksand(
              color: Color(0xffDA6317),
              fontSize: 15.sp,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
      SizedBox(
        width: 2.w,
      ),
      Image.asset(
        "assets/icons/filter.png",
        height: 7.h,
      )
    ],
  );
}
