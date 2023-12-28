import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practiceapp/Controller/AuthController.dart';
import 'package:practiceapp/Widgets/genericTextWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AnonymsScreen extends StatefulWidget {
  const AnonymsScreen({super.key});

  @override
  State<AnonymsScreen> createState() => _AnonymsScreenState();
}

class _AnonymsScreenState extends State<AnonymsScreen> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      init: AuthController(),
      builder: (AuthController _) => GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus!.unfocus();
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              Image.asset("assets/images/backk.png"),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Center(
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/food.png",
                          height: 14.5.h,
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Image.asset(
                          "assets/images/ninja.png",
                          height: 3.8.h,
                        ),
                        genericTextWidget("Deliver Favorite Food",
                            fontSize: 14.sp, fontWeight: FontWeight.w500),
                        SizedBox(
                          height: 7.h,
                        ),
                        genericTextWidget("Sign Up For Free",
                            fontSize: 19.sp, fontWeight: FontWeight.w700),
                        SizedBox(
                          height: 5.h,
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
                              controller: _.password,
                              obscureText: _isObscure,
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
                                    'assets/icons/lock.png',
                                    height: .4.h,
                                    width: 2.w,
                                  ),
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _isObscure = !_isObscure;
                                    });
                                  },
                                  child: Icon(
                                    _isObscure
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Color(0xff808B95),
                                  ),
                                ),
                                hintText: "Password",
                                hintStyle: GoogleFonts.quicksand(
                                  color: Color(0xff808B95),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 6.h),
                        InkWell(
                          onTap: ()  {},
                          child: Container(
                            height: 7.h,
                            width: 50.w,
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
                              child: genericTextWidget("ANON Sign in",
                                  color: Colors.white,
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
