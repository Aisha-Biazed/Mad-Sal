import 'package:flutter/material.dart ';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../core/constant/router/app_routes.dart';
import '../../../../../core/shared/app_button.dart';
import '../../../../../core/shared/app_image.dart';
import '../../../../../core/shared/app_text.dart';
import '../../../../../generated/assets.dart';

class OrderFailedScreen extends StatelessWidget {
  const OrderFailedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppText.titleSmall(
            "Oooooops",
            textAlign: TextAlign.center,
          ),
          21.verticalSpace,
          AppText("Sorry, Your order has refused", textAlign: TextAlign.center),
          53.verticalSpace,
          AppImage.asset(Assets.imagesField),
          72.verticalSpace,
          AppButton.field(
            onPressed: () {},
            titleWidget: AppText(
              "Try Again",
              color: ColorManager.white,
            ),
          ),
          50.verticalSpace,
          GestureDetector(
            onTap: () {
              Get.toNamed(AppRoute.detailsOrder);
            },
            child: AppText(
              "View Details",
              color: ColorManager.primary,
            ),
          ),
        ],
      ),
    );
  }
}
