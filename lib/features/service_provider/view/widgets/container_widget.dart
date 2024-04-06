import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../core/shared/app_text.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    Key? key,
    required this.text,
    required this.width,
    required this.height,
    required this.radius,
    required this.color,
  }) : super(key: key);
  final String text;
  final double width;
  final double height;
  final double radius;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,
      decoration: BoxDecoration(
          color: ColorManager.primary,
          borderRadius: BorderRadius.all(Radius.circular(radius.w))),
      child: Center(
          child: AppText.bodySmall(
        text,
        color: color,
      )),
    );
  }
}
