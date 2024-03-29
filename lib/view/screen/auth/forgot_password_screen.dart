import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal_app/core/constant/color_scheme/color_manger.dart';
import 'package:med_sal_app/core/constant/router/app_routes.dart';
import 'package:med_sal_app/core/shared/app_button.dart';
import 'package:med_sal_app/core/shared/app_text.dart';
import 'package:med_sal_app/view/widgets/auth/custom_text_field.dart';

import '../../../core/constant/generated/assets.dart';
import '../../../core/shared/container_header_widget.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ContainerHeaderWidget(
            textContainer: "forget".tr,
            imageContainer: Assets.iconsArrowCircleLeft,
            onTap: () {
              Get.back();
            },
          ),
          Padding(
            padding: REdgeInsetsDirectional.only(start: 18.w, end: 18.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                50.verticalSpace,
                AppText.labelLarge("enter_email".tr),
                50.verticalSpace,
                CustomTextField(
                  label: "email".tr,
                  hintText: "yourname @mail.com",
                  suffixIcon: Icon(
                    Icons.mail_outline,
                    size: 24.w,
                    color: ColorManager.mainGrey,
                  ),
                ),
                40.verticalSpace,
                AppButton.field(
                  onPressed: () {
                    Get.toNamed(AppRoute.resetPassword);
                  },
                  titleWidget: AppText.titleSmall(
                    "verification_code".tr,
                    color: ColorManager.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
