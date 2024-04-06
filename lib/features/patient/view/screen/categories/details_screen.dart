import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal_app/core/constant/router/app_routes.dart';
import 'package:med_sal_app/core/shared/app_button.dart';
import 'package:med_sal_app/core/shared/app_image.dart';
import 'package:med_sal_app/core/shared/app_text.dart';
import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../generated/assets.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          50.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              34.horizontalSpace,
              AppImage.asset(Assets.iconsArrowBack),
              10.horizontalSpace,
              AppText("Details")
            ],
          ),
          11.verticalSpace,
          Expanded(
            child: Stack(
              children: [
                AppImage.asset(Assets.imagesDetails),
                Positioned(
                    top: 260.h,
                    child: Card(
                      elevation: 4.0,
                      color: ColorManager.white,
                      margin:
                          REdgeInsetsDirectional.only(start: 20.w, end: 20.w),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0.r)),
                      ),
                      child: Container(
                        height: 447.h,
                        width: 354.w,
                        decoration: BoxDecoration(
                            border: Border.all(color: ColorManager.primary),
                            color: ColorManager.white,
                            borderRadius: BorderRadiusDirectional.all(
                                Radius.circular(25.r))),
                        padding: REdgeInsetsDirectional.only(
                            start: 14.w, end: 10.w, bottom: 10.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            16.verticalSpace,
                            AppText.labelLarge(
                              "Service Name",
                              color: ColorManager.secondaryPrim,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                AppText.labelSmall(
                                  "Time requested:",
                                  color: ColorManager.primary,
                                ),
                                AppText.labelSmall(" 30min")
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                AppText.labelSmall(
                                  "Cost",
                                  color: ColorManager.primary,
                                ),
                                AppText.labelSmall(" Cost 1")
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                AppText.labelSmall(
                                  "Discount:",
                                  color: ColorManager.primary,
                                ),
                                AppText.labelSmall(" 10%"),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText.labelSmall(
                                  "Description",
                                  color: ColorManager.primary,
                                ),
                                AppText.labelSmall(
                                    "Lorem ipsum dolor sit amet\n consectetur. Eget quis faucibus erat\n semper tincidunt posuere lorem\n tellus integer. Sapien in neque metus\n felis luctus. Lorem purus nibh\n pharetra nulla amet risus sed at nisi.")
                              ],
                            ),
                            10.verticalSpace,
                            AppButton.field(
                              backgroundColor: ColorManager.secondaryPrim,
                              onPressed: () {
                                Get.toNamed(AppRoute.myOrder);
                              },
                              titleWidget: AppText(
                                "Buy Now ",
                                color: ColorManager.white,
                              ),
                            ),
                            20.verticalSpace
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
