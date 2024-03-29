import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/color_scheme/color_manger.dart';
import '../../../core/shared/app_text.dart';

class SectionWidget extends StatelessWidget {
  const SectionWidget(
      {Key? key, required this.onTap, required this.titleSection})
      : super(key: key);
  final String titleSection;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 54.h,
        width: 105.w,
        decoration: BoxDecoration(
            color: ColorManager.secondaryPrim,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(25.r),
                bottomLeft: Radius.circular(25.r))),
        child: Center(
          child: AppText(
            titleSection,
            color: ColorManager.white,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
