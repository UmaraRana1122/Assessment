import 'package:flutter/material.dart';
import 'package:flutter_pin_code_widget/flutter_pin_code_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Skip',
                style: TextStyle(color: Colors.blueAccent),
              ))
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Text(
              'Set up PIN',
              style: TextStyle(color: Colors.black, fontSize: 19.sp),
            ),
            SizedBox(height: 3.h),
            Text('You can use this PIN to unlock the app..'),
            Text('Pin length is 4-25 digits'),
            SizedBox(height: 3.h),
            Divider(
              color: Colors.black,
              height: 20,
              thickness: 0.5,
              indent: 0,
              endIndent: 0,
            ),
            Expanded(
              child: PinCodeWidget(
                minPinLength: 4,
                maxPinLength: 25,
                onChangedPin: (pin) {},
                onEnter: (pin, _) {},
                centerBottomWidget: IconButton(
                  icon: Icon(
                    Icons.fingerprint,
                    size: 40,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
