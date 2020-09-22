library acropolic.globals;

import 'package:flutter/material.dart';

class Language{
  static const navHome = <int, String>{
    0 : "Home",
    1 : "Home1",
    2 : "Home2",
  };

  static const introduction = <int, String>{
    0 : "introduction",
    1 : "Home1",
    2 : "Home2",
  };
}

int selectedLan = 0;

class AppColor{
  AppColor._();

  static const Color primaryYellow = Color(0xFFFF8F00);
}