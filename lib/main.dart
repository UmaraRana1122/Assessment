import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:practiceapp/API/fireSroteAPI.dart';
import 'package:practiceapp/Screens/login.dart';
import 'package:practiceapp/services/authservices.dart';
import 'package:practiceapp/services/fireStoreServices.dart';
import 'package:practiceapp/services/localServices.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'models/user_model.dart';
import 'services/global.dart';

Future<void> main() async {
  await onInit();
  runApp(const MyApp());
}

Future<void> onInit() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  EasyLoading.instance.indicatorType = EasyLoadingIndicatorType.cubeGrid;
  EasyLoading.instance.toastPosition = EasyLoadingToastPosition.top;
  EasyLoading.instance.dismissOnTap = false;
  EasyLoading.instance.displayDuration = const Duration(seconds: 3);
  Get.put(AuthServices());
  Get.put(FirestoreApi());
  Get.put(FirestoreServices());
  Get.put(LocalServices());
  await Get.find<AuthServices>().checkUser();
  if (currentUser.id != '') {
    currentUser =
        (await Get.find<FirestoreServices>().getUser(currentUser.id)) ??
            UserModel();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: LoginInScreen(
              // verificationId: '',
              ),
          builder: EasyLoading.init(),
        );
      },
    );
  }
}
