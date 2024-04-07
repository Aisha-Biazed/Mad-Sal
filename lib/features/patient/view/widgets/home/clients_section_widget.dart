import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:med_sal_app/core/shared/app_image.dart';
import 'package:med_sal_app/core/shared/app_text.dart';

import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../core/constant/theme/constants.dart';
import '../../../../../generated/assets.dart';

class ClientSectionWidget extends StatelessWidget {
  const ClientSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsetsDirectional.only(start: 18.w, end: 22.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              50.verticalSpace,
              AppText.headlineSmall("Doctor"),
              Container(),
              Container(
                height: 120.h,
                width: 146.w,
                decoration: BoxDecoration(
                    color: ColorManager.white,
                    border: Border.all(color: ColorManager.secondaryPrim),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(160.r))),
                child: Center(
                  child: AppText(
                    "What Our\n Clients Say",
                    textAlign: TextAlign.center,
                    color: ColorManager.secondaryPrim,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              AppText(
                "See All",
                color: ColorManager.primary,
              ),
              10.horizontalSpace,
              AppImage.asset(Assets.iconsArrowForward)
            ],
          ),
          20.verticalSpace,
          Container(
            height: 200.h,
            width: 350.w,
            decoration: BoxDecoration(
                gradient: UIConstants.gradient(context,
                    end: Alignment.bottomCenter, begin: Alignment.topCenter),
                border: Border.all(color: ColorManager.secondaryPrim),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(160.r),
                    bottomRight: Radius.circular(180.r),
                    bottomLeft: Radius.circular(250.r))),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                20.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(),
                    AppText(
                      "Lorem ipsum dolor sit amet\n consectetur.\nLorem ipsum dolor sit amet\n consectetur..",
                      color: ColorManager.dark,
                    ),
                    // const Spacer(),
                    Padding(
                      padding: REdgeInsetsDirectional.only(start: 40, top: 40),
                      child: AppImage.asset(Assets.imagesClient),
                    ),
                  ],
                ),
                AppText(
                  "Lara Khalili",
                  textAlign: TextAlign.end,
                  color: ColorManager.dark,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
