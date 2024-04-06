import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:med_sal_app/core/constant/theme/extension.dart';

const _package = 'design';
const fontFamily = 'Almarai';

TextTheme textTheme = TextTheme(
  //edit style
/////dasf
  displayLarge: TextStyle(
      fontSize: 35.0.sp,
      fontWeight: FontWeight.w400,
      fontFamily: fontFamily,
      height: 1.5),

  displayMedium: TextStyle(
      fontSize: 35.0.sp,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      height: 40.fromFigmaHeight(35)),
  displaySmall: TextStyle(
    fontSize: 40.0.sp,
    fontWeight: FontWeight.w400,
    fontFamily: fontFamily,
  ),

  /// headline edit
  headlineLarge: TextStyle(
    fontSize: 30.sp,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    height: 45.fromFigmaHeight(30),
  ),
  //edit style
  headlineMedium: TextStyle(
    fontSize: 14.0.sp,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    height: 21.fromFigmaHeight(14),
  ),
  headlineSmall: TextStyle(
    fontSize: 24.0.sp,
    fontWeight: FontWeight.w600,
    fontFamily: fontFamily,
    letterSpacing: -0.5.w,
    height: 20.fromFigmaHeight(24),
  ),

  ///Title
  ////Refactored to malum
  titleLarge: TextStyle(
    fontSize: 24.sp,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    height: 36.fromFigmaHeight(24),
  ),
  ////Refactored to malum
  titleMedium: TextStyle(
    fontSize: 22.0.sp,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    height: 24.fromFigmaHeight(20),
  ),
  titleSmall: TextStyle(
    fontSize: 20.0.sp,
    fontWeight: FontWeight.w500,
    fontFamily: fontFamily,
  ),

  ///Label edit style
  labelLarge: TextStyle(
    fontSize: 20.0.sp,
    fontWeight: FontWeight.w400,
    fontFamily: fontFamily,
    height: 22.32.fromFigmaHeight(20),
  ),
  ////Refactored to malum
  labelMedium: TextStyle(
    fontSize: 20.0.sp,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    height: 13.39.fromFigmaHeight(20),
  ),
  //edit style
  labelSmall: TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    fontFamily: fontFamily,
    height: 24.fromFigmaHeight(16),
  ),

  ///Body
  ////Refactored to malum
  bodyLarge: TextStyle(
    fontSize: 16.0.sp,
    fontWeight: FontWeight.w700,
    fontFamily: fontFamily,
    height: 20.fromFigmaHeight(16),
  ),
  ////Refactored to malum
  bodyMedium: TextStyle(
    fontSize: 18.0.sp,
    fontWeight: FontWeight.w400,
    height: 20.fromFigmaHeight(18),
    fontFamily: fontFamily,
  ),
  ////editt
  bodySmall: TextStyle(
    fontSize: 16.0.sp,
    fontWeight: FontWeight.w400,
    height: 16.39.fromFigmaHeight(16),
    fontFamily: fontFamily,
  ),
);

extension FamilyUtils on TextStyle {
  TextStyle get extraBold => copyWith(fontWeight: FontWeight.w800);

  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);

  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);

  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);

  TextStyle get regular => copyWith(fontWeight: FontWeight.w400);

  TextStyle get light => copyWith(fontWeight: FontWeight.w300);
}
