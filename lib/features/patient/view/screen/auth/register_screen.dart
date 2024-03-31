import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal_app/core/shared/app_text.dart';

import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../core/constant/router/app_routes.dart';
import '../../../../../core/shared/app_button.dart';
import '../../../../../core/shared/container_header_widget.dart';
import '../../widgets/auth/container_bottom_widget.dart';
import '../../widgets/auth/custom_text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          ContainerHeaderWidget(
            textContainer: "register_patient".tr,
          ),
          Padding(
            padding: REdgeInsetsDirectional.only(
                start: 18.w, end: 18.w, top: 26.h, bottom: 48.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTextField(
                  label: "email".tr,
                  hintText: "yourname @mail.com",
                  suffixIcon: Icon(
                    Icons.mail_outline,
                    size: 24.w,
                    color: ColorManager.mainGrey,
                  ),
                ),
                20.verticalSpace,
                CustomTextField(
                  label: "password".tr,
                  hintText: "At least 8 characters",
                  suffixIcon: Icon(
                    Icons.visibility_outlined,
                    size: 24.w,
                    color: ColorManager.mainGrey,
                  ),
                ),
                20.verticalSpace,
                CustomTextField(
                  label: "confirm_pass".tr,
                  hintText: "Confirm Password",
                  suffixIcon: Icon(
                    Icons.visibility_off_outlined,
                    size: 24.w,
                    color: ColorManager.mainGrey,
                  ),
                ),
                45.verticalSpace,
                AppButton.field(
                  onPressed: () {
                    Get.toNamed(AppRoute.checkEmail);
                  },
                  titleWidget: AppText.titleSmall("register".tr,
                      color: ColorManager.white),
                ),
                // 38.verticalSpace,
              ],
            ),
          ),
          const ContainerBottomWidget()
        ],
      ),
    );
  }
}
