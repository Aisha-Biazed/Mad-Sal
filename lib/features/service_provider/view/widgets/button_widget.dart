import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../core/shared/app_text.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key, required this.title, required this.onTap})
      : super(key: key);
  final String title;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 42.h,
        width: 95.w,
        decoration: BoxDecoration(
            color: ColorManager.primary,
            border: Border.all(color: ColorManager.secondaryPrim),
            borderRadius: BorderRadius.all(Radius.circular(15.r))),
        child: Center(
            child: AppText.bodySmall(
          title,
          color: ColorManager.white,
        )),
      ),
    );
  }
}
