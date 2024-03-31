import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/color_scheme/color_manger.dart';

class CircularWidget extends StatelessWidget {
  const CircularWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: REdgeInsetsDirectional.only(top: 80.h),
      height: 25.h,
      width: 25.w,
      decoration: BoxDecoration(
          border: Border.all(color: ColorManager.secondaryPrim, width: 2.w),
          borderRadius: BorderRadiusDirectional.all(Radius.circular(25))),
    );
  }
}
