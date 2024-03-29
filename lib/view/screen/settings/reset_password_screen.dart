import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal_app/core/shared/container_header_widget.dart';

import '../../../core/constant/color_scheme/color_manger.dart';
import '../../../core/constant/router/app_routes.dart';
import '../../../core/shared/app_button.dart';
import '../../../core/shared/app_text.dart';
import '../../widgets/auth/custom_text_field.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ContainerHeaderWidget(textContainer: "reset_pass".tr),
          Padding(
            padding:
                REdgeInsetsDirectional.only(start: 18.w, end: 18.w, top: 118.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextField(
                  label: "new_pass".tr,
                  suffixIcon: Icon(
                    Icons.visibility_outlined,
                    size: 24.w,
                    color: ColorManager.mainGrey,
                  ),
                ),
                76.verticalSpace,
                CustomTextField(
                  label: "confirm_pass".tr,
                  suffixIcon: Icon(
                    Icons.visibility_off_outlined,
                    size: 24.w,
                    color: ColorManager.mainGrey,
                  ),
                ),
                123.verticalSpace,
                AppButton.field(
                  onPressed: () {
                    Get.toNamed(AppRoute.resetPassword);
                  },
                  titleWidget: AppText.titleSmall(
                    "change_pass".tr,
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
