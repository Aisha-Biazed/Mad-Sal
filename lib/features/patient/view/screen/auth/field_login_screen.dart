import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal_app/core/shared/app_button.dart';
import 'package:med_sal_app/core/shared/app_image.dart';
import 'package:med_sal_app/core/shared/app_text.dart';
import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../core/constant/router/app_routes.dart';
import '../../../../../generated/assets.dart';

class FieldLoginScreen extends StatelessWidget {
  const FieldLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Column(
        children: [
          AppImage.asset(
            Assets.imagesError,
            fit: BoxFit.fill,
          ),
          36.verticalSpace,
          AppButton.field(
            onPressed: () {
              Get.offNamed(AppRoute.home);
            },
            titleWidget: AppText.bodyMedium(
              "Go Home",
              color: ColorManager.white,
            ),
          )
        ],
      ),
    );
  }
}
