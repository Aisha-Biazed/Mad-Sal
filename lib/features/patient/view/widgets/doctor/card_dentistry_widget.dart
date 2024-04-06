import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../core/shared/app_image.dart';
import '../../../../../core/shared/app_text.dart';
import '../../../../../generated/assets.dart';

class CardDentistryWidget extends StatelessWidget {
  const CardDentistryWidget(
      {Key? key, required this.title, required this.image, this.onTap})
      : super(key: key);
  final String title;
  final String image;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100.h,
        width: 354.w,
        margin: REdgeInsetsDirectional.only(top: 16.h, bottom: 16.h),
        padding: REdgeInsetsDirectional.only(top: 20.h, start: 0.w),
        decoration: BoxDecoration(
            border: Border.all(color: ColorManager.borderGrey),
            borderRadius: BorderRadius.all(Radius.circular(10.r))),
        child: ListTile(
          leading: AppImage.asset(image, width: 90, height: 88),
          title: AppText(
            title,
            textAlign: TextAlign.center,
          ),
          trailing: AppImage.asset(
            Assets.iconsArrowBackIosNew,
          ),
        ),
      ),
    );
  }
}
