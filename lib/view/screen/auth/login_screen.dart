import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal_app/controller/auth/check_box_controller.dart';
import 'package:med_sal_app/core/constant/color_scheme/color_manger.dart';
import 'package:med_sal_app/core/constant/router/app_routes.dart';
import 'package:med_sal_app/core/shared/app_image.dart';
import 'package:med_sal_app/core/shared/app_text.dart';
import 'package:med_sal_app/view/widgets/auth/custom_text_field.dart';
import '../../../core/shared/app_button.dart';
import '../../../generated/assets.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  CheckBoxController checkController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          AppImage.asset(
            Assets.imagesLoginImage,
            fit: BoxFit.fill,
          ),
          Padding(
            padding:
                REdgeInsetsDirectional.only(start: 18.w, end: 18.w, top: 33.h),
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
                  suffixIcon: Icon(
                    Icons.visibility_outlined,
                    size: 24.w,
                    color: ColorManager.mainGrey,
                  ),
                ),
                58.verticalSpace,
                Row(
                  children: [
                    GetBuilder<CheckBoxController>(builder: (controller) {
                      return Checkbox(
                        side: BorderSide(color: ColorManager.primary),
                        activeColor: ColorManager.primary,
                        value: controller.isChecked,
                        onChanged: (bool? value) {
                          controller.toggleCheckbox(value ?? false);
                        },
                      );
                    }),
                    AppText.bodyMedium(
                      "remember_me".tr,
                      color: ColorManager.primary,
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(AppRoute.forgetPassword);
                      },
                      child: AppText.bodyMedium(
                        "forgot_password".tr,
                        color: ColorManager.primary,
                      ),
                    )
                  ],
                ),
                38.verticalSpace,
                AppButton.field(
                  onPressed: () {
                    Get.toNamed(AppRoute.register);
                  },
                  titleWidget: AppText.titleSmall(
                    "login".tr,
                    color: ColorManager.white,
                  ),
                ),
                38.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText.bodyMedium("no_account".tr),
                    10.horizontalSpace,
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoute.register);
                      },
                      child: AppText.bodyMedium(
                        "create".tr,
                        color: ColorManager.primary,
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationThickness: 2,
                            decorationColor: ColorManager.primary),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
