import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/color_scheme/color_manger.dart';

class ContainerDentistryWidget extends StatelessWidget {
  const ContainerDentistryWidget({Key? key, required this.child})
      : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: REdgeInsetsDirectional.only(start: 18.w, end: 18.w, bottom: 15.h),
      width: 390.w,
      height: 689.h,
      decoration: BoxDecoration(
          color: ColorManager.white,
          border: Border.all(color: ColorManager.secondaryPrim),
          borderRadius: BorderRadius.all(Radius.circular(30.r))),
      child: child,
    );
  }
}
