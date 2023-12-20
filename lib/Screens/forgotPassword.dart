import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practiceapp/Widgets/genericTextWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Controller/AuthController.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        init: AuthController(),
        builder: (AuthController _) => Scaffold(
              backgroundColor: Colors.white,
              body: Stack(
                children: [
                  Image.asset("assets/images/pattern.png"),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 2.h,
                          ),
                          Image.asset(
                            "assets/icons/back.png",
                            height: 5.h,
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          genericTextWidget("Reset your password here "),
                          SizedBox(
                            height: 1.h,
                          ),
                          genericTextWidget(
                              "Select which contact details should we use to reset your password.",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w300),
                          SizedBox(
                            height: 3.h,
                          ),
                          Padding(
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
                                controller: _.email,
                                cursorColor: Color(0xff4B5768),
                                style: GoogleFonts.quicksand(
                                  color: Color(0xff4B5768),
                                ),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xffFFFFFF),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 20.0, horizontal: 10),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xffF4F4F4),
                                      width: .5.w,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xffF4F4F4),
                                      width: .5.w,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 14.0, vertical: 10),
                                    child: Image.asset(
                                      'assets/icons/message.png',
                                      height: .4.h,
                                      width: 2.w,
                                    ),
                                  ),
                                  hintText: "Email",
                                  hintStyle: GoogleFonts.quicksand(
                                    color: Color(0xff808B95),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.all(4.0),
                          //   child: Container(
                          //     decoration: BoxDecoration(
                          //       boxShadow: [
                          //         BoxShadow(
                          //           color: Color(0xfff2f2ff),
                          //           spreadRadius: -1,
                          //           blurRadius: 22,
                          //           offset: Offset(0, 9),
                          //         ),
                          //       ],
                          //     ),
                          //     child: TextFormField(
                          //       controller: _.cPassword,
                          //       cursorColor: Color(0xff4B5768),
                          //       style: GoogleFonts.quicksand(
                          //         color: Color(0xff4B5768),
                          //       ),
                          //       decoration: InputDecoration(
                          //         filled: true,
                          //         fillColor: Color(0xffFFFFFF),
                          //         contentPadding: EdgeInsets.symmetric(
                          //             vertical: 20.0, horizontal: 10),
                          //         enabledBorder: OutlineInputBorder(
                          //           borderSide: BorderSide(
                          //             color: Color(0xffF4F4F4),
                          //             width: .5.w,
                          //           ),
                          //           borderRadius:
                          //               BorderRadius.all(Radius.circular(20)),
                          //         ),
                          //         focusedBorder: OutlineInputBorder(
                          //           borderSide: BorderSide(
                          //             color: Color(0xffF4F4F4),
                          //             width: .5.w,
                          //           ),
                          //           borderRadius:
                          //               BorderRadius.all(Radius.circular(20)),
                          //         ),
                          //         prefixIcon: Padding(
                          //           padding: const EdgeInsets.symmetric(
                          //               horizontal: 14.0, vertical: 10),
                          //           child: Image.asset(
                          //             'assets/icons/message.png',
                          //             height: .4.h,
                          //             width: 2.w,
                          //           ),
                          //         ),
                          //         hintText: "Confirm Password",
                          //         hintStyle: GoogleFonts.quicksand(
                          //           color: Color(0xff808B95),
                          //           fontSize: 16.sp,
                          //           fontWeight: FontWeight.w400,
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          Spacer(),
                          Center(
                            child: InkWell(
                              onTap: () {
                                _.forgetPassword();
                              },
                              child: Container(
                                height: 7.h,
                                width: 43.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xff46F889),
                                      Color(0xff15BE77),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight,
                                  ),
                                ),
                                child: Align(
                                  child: genericTextWidget("Next",
                                      color: Colors.white,
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ));
  }
}
