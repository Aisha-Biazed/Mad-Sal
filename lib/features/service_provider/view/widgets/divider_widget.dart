import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/color_scheme/color_manger.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4.h, // Thickness of the line
      margin: EdgeInsets.symmetric(horizontal: 140.w),
      decoration: BoxDecoration(
        color: ColorManager.ThirdPrim, // Line color
        boxShadow: [
          BoxShadow(
            color: ColorManager.mainGrey.withOpacity(0.8), // Shadow color
            spreadRadius: 2, // Spread radius
            blurRadius: 4, // Blur radius
            offset: Offset(0, 2), // Offset in x and y direction
          ),
        ],
      ),
    );
  }
}
