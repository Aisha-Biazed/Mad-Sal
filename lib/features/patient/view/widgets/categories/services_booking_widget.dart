import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../core/constant/router/app_routes.dart';
import '../../../../../core/shared/app_text.dart';

class ServicesBookingWidget extends StatelessWidget {
  const ServicesBookingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoute.details);
      },
      child: Card(
        elevation: 4.0,
        color: ColorManager.white,
        margin: REdgeInsetsDirectional.only(start: 20.w, end: 20.w),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0.r)),
        ),
        child: Container(
          height: 260.h,
          width: 349.w,
          decoration: BoxDecoration(
              border: Border.all(color: ColorManager.secondaryPrim),
              color: ColorManager.white,
              borderRadius: BorderRadiusDirectional.all(Radius.circular(25.r))),
          padding:
              REdgeInsetsDirectional.only(start: 14.w, end: 10.w, bottom: 10.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              16.verticalSpace,
              AppText.labelLarge(
                "Service 1",
                color: ColorManager.secondaryPrim,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText.labelSmall(
                    "Services name",
                    color: ColorManager.primary,
                  ),
                  AppText.labelSmall("Teeth whitening")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText.labelSmall(
                    "Doctor name",
                    color: ColorManager.primary,
                  ),
                  AppText.labelSmall("Name1")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText.labelSmall(
                    "Description",
                    color: ColorManager.primary,
                  ),
                  AppText.labelSmall("Easy and fast")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText.labelSmall(
                    "Source",
                    color: ColorManager.primary,
                  ),
                  AppText.labelSmall("Clinic1"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText.labelSmall("Cost", color: ColorManager.primary),
                  AppText.labelSmall("12\$"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText.labelSmall("Date & Time",
                      color: ColorManager.primary),
                  AppText.labelSmall("Wed,30Oct,10-10:3Am"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
