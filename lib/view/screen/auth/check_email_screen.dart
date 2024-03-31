import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal_app/core/constant/router/app_routes.dart';
import 'package:med_sal_app/core/shared/app_button.dart';
import 'package:med_sal_app/core/shared/app_image.dart';

import '../../../core/constant/color_scheme/color_manger.dart';
import '../../../core/shared/app_text.dart';
import '../../../generated/assets.dart';

class CheckEmailScreen extends StatelessWidget {
  const CheckEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          50.verticalSpace,
          AppImage.asset(
            Assets.imagesCheck,
            fit: BoxFit.fill,
            height: 234.h,
          ),
          52.verticalSpace,
          AppText.displayLarge(
            "check_email".tr,
            color: ColorManager.primary,
          ),
          82.verticalSpace,
          AppText.labelLarge(
            "sent_verification".tr,
            textAlign: TextAlign.center,
          ),
          81.verticalSpace,
          AppButton.field(
            onPressed: () {
              Get.toNamed(AppRoute.verifyCod);
            },
            titleWidget: AppText.titleSmall(
              "enter_code".tr,
              color: ColorManager.white,
            ),
          ),
        ],
      ),
    );
  }
}
