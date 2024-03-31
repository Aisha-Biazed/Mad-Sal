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
      required this.onTap})
      : super(key: key);
  final String title;
  final String imageCard;
  void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsetsDirectional.only(bottom: 16.h),
      color: ColorManager.greyCard,
      child: ListTile(
          contentPadding: REdgeInsetsDirectional.only(
              top: 14.h, bottom: 14.h, start: 10.w, end: 29.w),
          title: AppText.labelLarge(title),
          trailing: GestureDetector(
            onTap: onTap,
            child: AppImage.asset(imageCard),
          )),
    );
  }
}
