import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceapp/Screens/Sign_UpScreen.dart';
import 'package:practiceapp/Widgets/genericTextWidget.dart';
import 'package:practiceapp/Widgets/passwordWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Controller/AuthController.dart';

class ViaMethod extends StatelessWidget {
  const ViaMethod({super.key});

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
                          genericTextWidget("Forgot Password? "),
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
                          passwordWidget(
                              "assets/icons/mess.png", "4925", "Via sms:"),
                          passwordWidget("assets/icons/email2.png",
                              "@gmail.com", "Via Email:"),
                          Spacer(),
                          Center(
                            child: InkWell(
                              onTap: () {
                                Get.to(() => SignUpSuccess());
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
