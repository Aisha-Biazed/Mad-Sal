import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/color_scheme/color_manger.dart';
import '../../../core/shared/app_image.dart';
import '../../../core/shared/app_text.dart';

class CardProfileWidget extends StatelessWidget {
  const CardProfileWidget(
      {Key? key,
      required this.title,
      required this.icon,
      required this.subtitle})
      : super(key: key);
  final String title;
  final IconData icon;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsetsDirectional.only(start: 18.w, end: 18.w, top: 16.h),
      child: Card(
        shadowColor: ColorManager.white,
        elevation: 0.0,
        color: ColorManager.white,
        child: ListTile(
          title: Row(
            children: [
              Icon(
                icon,
                color: ColorManager.greyIcon,
                size: 24.h,
              ),
              20.horizontalSpace,
              AppText.labelLarge(
                title,
                color: ColorManager.greyIcon,
              ),
            ],
          ),
          subtitle: Center(child: AppText.labelLarge(subtitle)),
        ),
      ),
    );
  }
}
