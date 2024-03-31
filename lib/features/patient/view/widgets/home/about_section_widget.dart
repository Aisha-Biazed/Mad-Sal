import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../core/constant/theme/constants.dart';
import '../../../../../core/shared/app_text.dart';

class AboutSectionWidget extends StatelessWidget {
  const AboutSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 110.h,
          width: 162.w,
          decoration: BoxDecoration(
              color: ColorManager.white,
              border: Border.all(color: ColorManager.secondaryPrim),
              borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(160.r))),
          child: Center(
              child: AppText(
            "About Us",
            color: ColorManager.secondaryPrim,
          )),
        ),
        10.verticalSpace,
        Container(
          height: 569.h,
          width: 350.w,
          decoration: BoxDecoration(
              color: ColorManager.white,
              gradient: UIConstants.gradient(context,
                  end: Alignment.bottomCenter, begin: Alignment.topCenter),
              border: Border.all(color: ColorManager.secondaryPrim),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(160.r),
                  bottomLeft: Radius.circular(160.r),
                  bottomRight: Radius.circular(160.r))),
          child: Padding(
            padding: REdgeInsetsDirectional.only(
                bottom: 113.h, top: 63.h, start: 18.w, end: 40.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AppText(
                  "lorem".tr,
                  color: ColorManager.dark,
                ),
                AppText(
                  "lorem".tr,
                  color: ColorManager.dark,
                ),
                AppText(
                  "lorem".tr,
                  color: ColorManager.dark,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
