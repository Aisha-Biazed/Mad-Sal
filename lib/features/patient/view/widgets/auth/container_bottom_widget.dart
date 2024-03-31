import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal_app/core/shared/app_text.dart';

import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../core/constant/router/app_routes.dart';
import '../../../../../core/shared/app_button.dart';

class ContainerBottomWidget extends StatelessWidget {
  const ContainerBottomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 246.h,
      color: ColorManager.secondaryGrey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          AppText.labelLarge(
            "service_provider".tr,
            color: ColorManager.secondaryPrim,
          ),
          Padding(
            padding: REdgeInsetsDirectional.only(start: 70.w, end: 70.w),
            child: Column(
              children: [
                AppButton.field(
                  onPressed: () {
                    Get.toNamed(AppRoute.register);
                  },
                  titleWidget: AppText.titleMedium(
                    "join_now".tr,
                    color: ColorManager.white,
                  ),
                ),
                13.verticalSpace,
                Divider(
                  color: ColorManager.primary,
                  endIndent: 60,
                  indent: 60,
                  thickness: 5.h,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
