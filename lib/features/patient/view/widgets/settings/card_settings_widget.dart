import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../core/shared/app_image.dart';
import '../../../../../core/shared/app_text.dart';

class CardSettingsWidget extends StatelessWidget {
  CardSettingsWidget(
      {Key? key,
      required this.title,
      required this.imageCard,
      required this.onTap,
      this.color,
      this.borderColor})
      : super(key: key);
  final String title;
  final String imageCard;
  void Function() onTap;
  final Color? color;
  final Color? borderColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor ?? ColorManager.greyCard),
          borderRadius: BorderRadius.all(Radius.circular(25.0.r)),
        ),
        margin: EdgeInsetsDirectional.only(bottom: 16.h),
        color: color ?? ColorManager.greyCard,
        child: ListTile(
            contentPadding: REdgeInsetsDirectional.only(
                top: 14.h, bottom: 14.h, start: 10.w, end: 29.w),
            title: AppText.labelLarge(title),
            trailing: GestureDetector(
              child: AppImage.asset(imageCard),
            )),
      ),
    );
  }
}
