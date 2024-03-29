import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../color_scheme/color_manger.dart';

class UIConstants {
  static EdgeInsets horizontalListView =
      EdgeInsets.symmetric(horizontal: screenPaddingSmall.w);
  static EdgeInsets verticalListView =
      EdgeInsets.symmetric(vertical: screenPaddingSmall.w);

  static double screenPaddingSmall = 24;

  static LinearGradient gradient(BuildContext context,
          {bool flip = false,
          AlignmentGeometry? begin,
          AlignmentGeometry? end}) =>
      LinearGradient(
        colors: [
          ColorManager.primary,
          ColorManager.white,
        ],
        begin: begin ?? (flip ? Alignment.centerRight : Alignment.centerLeft),
        end: end ?? (flip ? Alignment.centerLeft : Alignment.centerRight),
      );
}
