import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal_app/core/shared/app_image.dart';
import 'package:med_sal_app/core/shared/app_text.dart';
import 'package:med_sal_app/generated/assets.dart';

import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../core/constant/router/app_routes.dart';
import '../../../../../core/shared/app_button.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppText.titleSmall(
            "Success",
            textAlign: TextAlign.center,
          ),
          21.verticalSpace,
          AppText("Yay, It’s Nice Order, It Will Arrive On Time",
              textAlign: TextAlign.center),
          53.verticalSpace,
          AppImage.asset(Assets.imagesSuccessOrder),
          72.verticalSpace,
          AppButton.field(
            onPressed: () {
              Get.offNamed(AppRoute.home);
            },
            titleWidget: AppText(
              "Back To Home",
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
          40.verticalSpace,
          AppImage.asset(Assets.imagesCircleOrder)
        ],
      ),
    );
  }
}
