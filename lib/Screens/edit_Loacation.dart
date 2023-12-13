import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceapp/Screens/edit_Payment.dart';
import 'package:practiceapp/Widgets/Shipping2Widget.dart';
import 'package:practiceapp/Widgets/ShippingWidget.dart';
import 'package:practiceapp/Widgets/genericTextWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Controller/AuthController.dart';

class EditLocation extends StatelessWidget {
  const EditLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        init: AuthController(),
        builder: (AuthController _) => Scaffold(
              body: Stack(
                children: [
                  Image.asset("assets/images/pattern.png"),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(() => EditPayment());
                            },
                            child: Image.asset(
                              "assets/icons/back.png",
                              height: 5.h,
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          genericTextWidget("Shipping"),
                          SizedBox(
                            height: 3.h,
                          ),
                          shippingWidget("Order Loaction",
                              "8502 Preston Rd. Inglewood \nMaine 98380"),
                          SizedBox(
                            height: 2.h,
                          ),
                          shippingWidget2(
                              "Deliver To",
                              "4517 Washington Ave.Manchestor \nKentucky 39495 ",
                              "Set Location")
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ));
  }
}
