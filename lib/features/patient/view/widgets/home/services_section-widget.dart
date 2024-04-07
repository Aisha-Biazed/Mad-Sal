import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../core/shared/app_image.dart';
import '../../../../../core/shared/app_text.dart';
import '../../../../../generated/assets.dart';

class ServicesSectionWidget extends StatelessWidget {
  const ServicesSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: REdgeInsetsDirectional.only(end: 200, start: 21.w),
          height: 57.h,
          width: 206.w,
          decoration: BoxDecoration(
              color: ColorManager.white,
              border: Border.all(color: ColorManager.secondaryPrim),
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(160.r))),
          child: Center(
              child: AppText(
            "Our Services",
            color: ColorManager.secondaryPrim,
          )),
        ),
        40.verticalSpace,
        Row(
          children: [
            AppText(
                "Lorem ipsum dolor sit amet \nconsectetur. Quis sollicitudin morbi\n nisi tincidunt lorem."),
            Padding(
              padding: REdgeInsetsDirectional.only(top: 40.h),
              child: Row(
                children: [
                  AppText(
                    "See All",
                    color: ColorManager.primary,
                  ),
                  10.horizontalSpace,
                  AppImage.asset(Assets.iconsArrowForward)
                ],
              ),
            ),
          ],
        ),
        84.verticalSpace,
        RSizedBox(
          height: 300,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: RSizedBox(
                  height: 194,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      AppImage.asset(
                        Assets.imagesService1,
                        height: 204.h,
                        width: 354.w,
                        fit: BoxFit.contain,
                      ),
                      AppImage.asset(
                        Assets.imagesService2,
                        height: 204.h,
                        width: 354.w,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
