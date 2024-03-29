import 'package:flutter/material.dart';

import '../../shared/typography.dart';
import '../color_scheme/color_manger.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "Almarai",
  textTheme: textTheme,
  floatingActionButtonTheme:
      FloatingActionButtonThemeData(backgroundColor: ColorManager.primary),
  appBarTheme: AppBarTheme(
    centerTitle: true,
    elevation: 0,
    iconTheme: IconThemeData(
      color: ColorManager.primary,
    ),
    titleTextStyle: TextStyle(
        color: ColorManager.primary,
        fontWeight: FontWeight.bold,
        fontFamily: "Almarai",
        fontSize: 25),
    backgroundColor: Colors.grey[50],
  ),
  // textTheme: TextTheme(
  //     headline1: TextStyle(
  //         fontWeight: FontWeight.bold, fontSize: 22, color: ColorManager.dark),
  //     headline2: TextStyle(
  //         fontWeight: FontWeight.bold, fontSize: 26, color: ColorManager.dark),
  //     bodyText1: TextStyle(
  //         height: 0,
  //         color: ColorManager.grey,
  //         fontWeight: FontWeight.bold,
  //         fontSize: 14),
  //     bodyText2: TextStyle(height: 2, color: ColorManager.grey, fontSize: 14)),
);

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme: TextTheme(
      headline1: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 22, color: ColorManager.dark),
      headline2: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 26, color: ColorManager.dark),
      bodyText1: TextStyle(
          height: 2,
          color: ColorManager.grey,
          fontWeight: FontWeight.bold,
          fontSize: 14),
      bodyText2: TextStyle(height: 2, color: ColorManager.grey, fontSize: 14)),
  primarySwatch: Colors.blue,
);
