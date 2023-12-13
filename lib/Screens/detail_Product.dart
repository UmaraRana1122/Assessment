import 'package:flutter/material.dart';
import 'package:practiceapp/Widgets/genericTextWidget.dart';
import 'package:practiceapp/Widgets/popularMenuWidget.dart';
import 'package:practiceapp/Widgets/testimonialWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          // margin: EdgeInsets.only(bottom: 1.h),
          height: 47.h,
          width: 100.w,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/rest.png"),
                  fit: BoxFit.fill)),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 100.w,
              height: 58.h,
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
                                Row(
                                  children: [
                                    Container(
                                      height: 3.5.h,
                                      width: 25.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffe5fbf1),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Align(
                                          child: Text(
                                        'Popular',
                                        style: TextStyle(
                                            color: Color(0xff26db8c),
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500),
                                      )),
                                    ),
                                    Spacer(),
                                    Image.asset(
                                      'assets/icons/location2.png',
                                      height: 3.h,
                                    ),
                                    SizedBox(
                                      width: 4.w,
                                    ),
                                    Image.asset(
                                      'assets/icons/love.png',
                                      height: 4.h,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Text(
                                  'Wijie Bar and Resto',
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: .7.h,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/icons/map.png",
                                      height: 2.3.h,
                                    ),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    genericTextWidget("19 Km",
                                        fontSize: 16.sp,
                                        color: Color(0xff3B3B3B),
                                        fontWeight: FontWeight.w300),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    Image.asset(
                                      "assets/icons/star.png",
                                      height: 2.3.h,
                                    ),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    genericTextWidget("4.8 Rating",
                                        fontSize: 16.sp,
                                        color: Color(0xff3B3B3B),
                                        fontWeight: FontWeight.w300),
                                  ],
                                ),
                              ],
                            )),
                        SizedBox(
                          height: 1.5.h,
                        ),
                        genericTextWidget(
                            "Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole....",
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff3B3B3B)),
                        SizedBox(
                          height: 1.5.h,
                        ),
                        Row(
                          children: [
                            genericTextWidget(
                              "Popular Menu",
                              fontSize: 17.sp,
                            ),
                            Spacer(),
                            genericTextWidget("View all",
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w300,
                                color: Color(0xffFF7C32)),
                            SizedBox(
                              height: 1.5.h,
                            ),
                          ],
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              popularMenuWidget("Spicy fresh crab", "\$12",
                                  "assets/images/pizza.png"),
                              popularMenuWidget("Spicy fresh crab", "\$16",
                                  "assets/images/bone.png"),
                              popularMenuWidget("Spicy fresh crab", "\$12",
                                  "assets/images/bone.png"),
                            ],
                          ),
                        ),
                        genericTextWidget(
                          "Testimonials",
                          fontSize: 17.sp,
                        ),
                        testimonialWidget("assets/images/pro1.png"),
                        testimonialWidget("assets/images/pro2.png"),
                      ]),
                ),
              ),
            ))
      ],
    ));
  }
}
