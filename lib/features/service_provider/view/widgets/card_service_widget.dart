import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/color_scheme/color_manger.dart';

class CardServiceWidget extends StatelessWidget {
  const CardServiceWidget({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      surfaceTintColor: ColorManager.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.r),
          side: BorderSide(color: ColorManager.borderGrey)),
      margin: EdgeInsetsDirectional.only(
          bottom: 0.h, top: 32.h, start: 18.w, end: 15.w),
      color: ColorManager.white,
      shadowColor: ColorManager.dark,
      child: child,
    );
  }
}
