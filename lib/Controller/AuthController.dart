import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  int currentindex = 0;
  int selectedPage = 0;

  int selectedindex = 0;
  int selectindex = 0;
  int currentIndex2 = 0;
  int resetSlideIndex = 0;

  TextEditingController name = TextEditingController();
  TextEditingController name2 = TextEditingController();
  TextEditingController name3 = TextEditingController();
  TextEditingController name4 = TextEditingController();

  TextEditingController refferelCode = TextEditingController();

  TextEditingController email = TextEditingController();
  TextEditingController date1 = TextEditingController();
  TextEditingController date3 = TextEditingController();

  TextEditingController date2 = TextEditingController();

  TextEditingController phone = TextEditingController();
  TextEditingController month = TextEditingController();
  TextEditingController year = TextEditingController();
  TextEditingController month2 = TextEditingController();
  TextEditingController year2 = TextEditingController();
  TextEditingController month3 = TextEditingController();
  TextEditingController year3 = TextEditingController();
  final TextEditingController message = TextEditingController();
final pageController = PageController();
  bool check = false;
  bool isCheck = false;
   bool check2 = false;
  bool isCheck2 = false;
 
}
