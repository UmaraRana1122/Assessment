import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceapp/Screens/order_Detail.dart';
import 'package:practiceapp/Screens/track_Order.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: OrderDetail(),
        );
      },
    );
  }
}
