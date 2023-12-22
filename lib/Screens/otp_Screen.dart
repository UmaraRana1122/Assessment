import 'package:flutter/material.dart';
import 'package:practiceapp/Widgets/genericTextWidget.dart';
import 'package:practiceapp/Widgets/otpWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.arrow_back,
                    size: 3.h,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Image.asset(
                'assets/images/food.png',
                height: 15.h,
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                'Verification',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "Enter your OTP code number",
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 4.h,
              ),
              Container(
                padding: EdgeInsets.all(28),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          textFieldOTP(context),
                          textFieldOTP(context),
                          textFieldOTP(context),
                          textFieldOTP(context),
                        ]),
                    SizedBox(
                      height: 4.h,
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 7.h,
                          width: 100.w,
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
                            child: genericTextWidget("Verify",
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
              SizedBox(
                height: 3.h,
              ),
              Text(
                "Didn't you receive any code?",
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "Resend New Code",
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff15BE77),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
