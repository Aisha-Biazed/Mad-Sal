import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal_app/core/shared/app_button.dart';
import 'package:med_sal_app/core/shared/app_image.dart';
import 'package:med_sal_app/core/shared/app_text.dart';

import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../core/constant/router/app_routes.dart';
import '../../../../../generated/assets.dart';

class StateBookingScreen extends StatelessWidget {
  const StateBookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned.fill(
          child: AppImage.asset(
            Assets.imagesWelcom,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
            top: 300,
            left: 0.w,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      REdgeInsetsDirectional.only(start: 18.w, bottom: 80.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AppText.headlineSmall("Welcome"),
                      18.verticalSpace,
                      AppText(
                          "Lorem ipsum dolor sit amet consectetur.\nAc id iaculis tristique proin egestas magna id."),
                    ],
                  ),
                ),
                AppButton.field(
                  backgroundColor: ColorManager.secondaryPrim,
                  onPressed: () {
                    Get.toNamed(AppRoute.editServices);
                  },
                  titleWidget: AppText(
                    "Services",
                    color: ColorManager.white,
                  ),
                ),
                33.verticalSpace,
                AppButton.field(
                  backgroundColor: ColorManager.secondaryPrim,
                  onPressed: () {
                    Get.toNamed(AppRoute.editProducts);
                  },
                  titleWidget: AppText(
                    "Products",
                    color: ColorManager.white,
                  ),
                ),
                33.verticalSpace,
                AppButton.field(
                  backgroundColor: ColorManager.secondaryPrim,
                  onPressed: () {},
                  titleWidget: AppText(
                    "Appointment",
                    color: ColorManager.white,
                  ),
                ),
              ],
            ))
      ],
    ));
  }
}
