import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceapp/Controller/AuthController.dart';
import 'package:practiceapp/Screens/set_Location.dart';
import 'package:practiceapp/Widgets/genericTextWidget.dart';
import 'package:practiceapp/Widgets/textfeild.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        init: AuthController(),
        builder: (AuthController _) =>Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/icons/back.png",
                height: 5.h,
              ),
              SizedBox(
                height: 2.h,
              ),
              genericTextWidget("Fill in your bio to get \nstarted"),
              SizedBox(
                height: .5.h,
              ),
              genericTextWidget(
                  "This data will displayed in your account \nprofile for security",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400),
              SizedBox(
                height: 3.h,
              ),
              feildWidget("First Name"),
              feildWidget("Last Name"),
              feildWidget("Mobile Number"),
              Spacer(),
              Center(
                child: InkWell(
                  onTap: () {
                    Get.to(() => SetLocation());
                  },
                  child: Container(
                    height: 7.h,
                    width: 40.w,
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
      ),
    ));
  }
}
