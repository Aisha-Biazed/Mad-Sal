import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal_app/features/patient/view/screen/categories/categories_screen.dart';
import 'package:med_sal_app/features/patient/view/screen/order/my_order_screen.dart';
import 'package:med_sal_app/features/patient/view/screen/settings/profile_screen.dart';

import '../features/patient/view/screen/home/home_screen.dart';
import '../features/patient/view/screen/settings/settings_screen.dart';

abstract class NavigationBarController extends GetxController {
  changePage(int currentpage);
}

class NavigationBarControllerImp extends NavigationBarController {
  int currentPage = 0;
  List<Widget> listPage = [
    HomeScreen(),
    ProfileScreen(),
    CategoriesScreen(),
    SettingsScreen(),
    MyOrderScreen(),
  ];

  List bottomAppbar = [
    {"title": "n", "icon": Icons.home_filled},
    {"title": "home", "icon": Icons.account_circle_outlined},
    {"title": "profile", "icon": Icons.work_outline},
    {"title": "categories", "icon": Icons.mail_outline},
    {"title": "categories", "icon": Icons.help_outline_outlined},
  ];

  @override
  changePage(int i) {
    currentPage = i;
    update();
  }
}
