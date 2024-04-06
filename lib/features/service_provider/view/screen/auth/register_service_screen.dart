import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../core/constant/router/app_routes.dart';
import '../../../../../core/shared/app_button.dart';
import '../../../../../core/shared/app_text.dart';
import '../../../../../core/shared/container_header_widget.dart';
import '../../../../../generated/assets.dart';
import '../../../../patient/view/widgets/auth/custom_text_field.dart';

class RegisterServiceScreen extends StatelessWidget {
  const RegisterServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorManager.secondaryGrey,
        flexibleSpace: Container(
          color: ColorManager.secondaryGrey,
        ),
        title: ContainerHeaderWidget(
          textContainer: 'Register as a service provider',
        ),
        toolbarHeight: 121.h,
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: REdgeInsetsDirectional.only(
            start: 18.w, end: 18.w, top: 36.h, bottom: 48.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              20.verticalSpace,
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
              20.verticalSpace,
              CustomTextField(
                label: "confirm_pass".tr,
                hintText: "Confirm Password",
                suffixIcon: Icon(
                  Icons.call,
                  size: 24.w,
                  color: ColorManager.mainGrey,
                ),
              ),
              20.verticalSpace,
              CustomTextField(
                label: "Busines name",
                hintText: "yourname @mail.com",
                suffixIcon: Icon(
                  Icons.card_membership,
                  size: 24.w,
                  color: ColorManager.mainGrey,
                ),
              ),
              20.verticalSpace,
              CustomTextField(
                label: "Service Type",
                hintText: "Enter service ",
                suffixIcon: Icon(
                  Icons.edit,
                  size: 24.w,
                  color: ColorManager.mainGrey,
                ),
              ),
              20.verticalSpace,
              CustomTextField(
                label: "Bank data",
                hintText: "Pleas enter data in fields",
                suffixIcon: Icon(
                  Icons.arrow_drop_down_outlined,
                  size: 24.w,
                  color: ColorManager.mainGrey,
                ),
              ),
              20.verticalSpace,
              AppText(
                  "Please Upload a file which contain information\n about you, and you services"),
              20.verticalSpace,
              CustomTextField(
                hintText: "Upload file",
                suffixIcon: Icon(
                  Icons.upload_rounded,
                  size: 24.w,
                  color: ColorManager.mainGrey,
                ),
              ),

              70.verticalSpace,
              AppButton.field(
                onPressed: () {
                  Get.toNamed(AppRoute.checkEmail);
                },
                titleWidget:
                    AppText.titleSmall("Sign up", color: ColorManager.white),
              ),
              // 38.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
