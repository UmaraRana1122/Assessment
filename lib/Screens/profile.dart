import 'package:flutter/material.dart';
import 'package:practiceapp/Widgets/favourate.dart';
import 'package:practiceapp/Widgets/genericTextWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          // margin: EdgeInsets.only(bottom: 1.h),
          height: 41.h,
          width: 100.w,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/pro7.png"),
                  fit: BoxFit.fill)),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 100.w,
              height: 64.h,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: Color(0xffFFFFFF)),
              child: Padding(
                padding: const EdgeInsets.all(23.0),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 90.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/gold.png',
                                  height: 5.h,
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Anum Wasuno',
                                      style: TextStyle(
                                          color: Color(0xff09051C),
                                          fontSize: 19.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Spacer(),
                                    Image.asset(
                                      "assets/icons/edit.png",
                                      height: 3.h,
                                    ),
                                  ],
                                ),
                                Text(
                                  'Anumwp66@gmail.com',
                                  style: TextStyle(
                                      color: Color(0xff3B3B3B),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w200),
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                Container(
                                  height: 8.h,
                                  width: 100.w,
                                  decoration: BoxDecoration(
                                    color: Color(0xffFFFFFF),
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xfff2f2ff),
                                        spreadRadius: -1,
                                        blurRadius: 22,
                                        offset: Offset(0, 9),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/voucher.png",
                                          height: 6.h,
                                        ),
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        genericTextWidget(
                                            "You have 3 vouchers,",
                                            fontSize: 17.sp)
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                genericTextWidget("Favourite", fontSize: 16.sp),
                                favourateWidget(
                                    "assets/images/order2.png", "Buy Again"),
                                favourateWidget(
                                    "assets/images/order3.png", "Buy Again"),
                                favourateWidget(
                                    "assets/images/food2.png", "Buy Again"),
                              ],
                            )),
                        SizedBox(
                          height: 1.5.h,
                        ),
                      ]),
                ),
              ),
            ))
      ],
    ));
  }
}
