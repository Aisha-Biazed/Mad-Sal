import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/color_scheme/color_manger.dart';
import '../../../core/shared/app_text.dart';

class SectionWidget extends StatelessWidget {
  const SectionWidget(
      {Key? key,
      this.onTap,
      required this.titleSection,
      this.backgroundColor,
      this.colorText})
      : super(key: key);
  final String titleSection;
  final void Function()? onTap;
  final Color? backgroundColor;
  final Color? colorText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 54.h,
        width: 105.w,
        decoration: BoxDecoration(
            color: backgroundColor ?? ColorManager.secondaryPrim,
            border: Border.all(color: ColorManager.secondaryPrim, width: 3.r),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(25.r),
                bottomLeft: Radius.circular(25.r))),
        child: Center(
          child: AppText(
            titleSection,
            color: colorText ?? ColorManager.white,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
