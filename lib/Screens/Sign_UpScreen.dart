import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceapp/Controller/AuthController.dart';
import 'package:practiceapp/Screens/home.dart';
import 'package:practiceapp/Widgets/genericTextWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SignUpSuccess extends StatefulWidget {
  const SignUpSuccess({super.key});

  @override
  State<SignUpSuccess> createState() => _SignUpSuccessState();
}

class _SignUpSuccessState extends State<SignUpSuccess> {
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
                              Spacer(),
                              Image.asset(
                                "assets/logo/congrates.png",
                                height: 17.h,
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              genericTextWidget("Congrats!",
                                  color: Color(0xff53E88B), fontSize: 21.sp),
                              SizedBox(
                                height: 1.h,
                              ),
                              genericTextWidget("Your Profile Is Ready To Use",
                                  color: Color(0xff000000), fontSize: 18.sp),
                              Spacer(
                                flex: 1,
                              ),
                              Center(
                                child: InkWell(
                                  onTap: () {
                                    Get.to(() => HomeScreen());
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
                                      child: genericTextWidget("Try Order",
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
                    )
                  ],
                ),
              ),
            ));
  }
}
