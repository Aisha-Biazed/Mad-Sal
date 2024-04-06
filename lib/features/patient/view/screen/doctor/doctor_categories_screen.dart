import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../core/constant/router/app_routes.dart';
import '../../../../../core/shared/container_header_widget.dart';
import '../../../../../generated/assets.dart';
import '../../widgets/settings/card_settings_widget.dart';

class DoctorCategoriesScreen extends StatelessWidget {
  const DoctorCategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ContainerHeaderWidget(
              textContainer: "Doctors", imageContainer: Assets.iconsArrowBack),
          Padding(
            padding:
                REdgeInsetsDirectional.only(start: 18.w, end: 18.w, top: 32.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                23.verticalSpace,
                CardSettingsWidget(
                  title: "Dentistry",
                  imageCard: Assets.iconsDentistry,
                  onTap: () {
                    Get.toNamed(AppRoute.dentistry);
                  },
                  color: ColorManager.white,
                  borderColor: ColorManager.secondaryPrim,
                ),
                CardSettingsWidget(
                  title: "Optics",
                  imageCard: Assets.iconsEyeglasses,
                  borderColor: ColorManager.secondaryPrim,
                  onTap: () {
                    Get.toNamed(AppRoute.optics);
                  },
                  color: ColorManager.white,
                ),
                CardSettingsWidget(
                  title: "Nutritionist",
                  imageCard: Assets.iconsNutrition,
                  borderColor: ColorManager.secondaryPrim,
                  onTap: () {},
                  color: ColorManager.white,
                ),
                CardSettingsWidget(
                  title: "Radiologist",
                  imageCard: Assets.iconsStore,
                  borderColor: ColorManager.secondaryPrim,
                  onTap: () {},
                  color: ColorManager.white,
                ),
                CardSettingsWidget(
                  title: "Home care",
                  imageCard: Assets.iconsHand,
                  borderColor: ColorManager.secondaryPrim,
                  onTap: () {},
                  color: ColorManager.white,
                ),
                CardSettingsWidget(
                  title: "Aesthetics",
                  imageCard: Assets.iconsSelfCare,
                  borderColor: ColorManager.secondaryPrim,
                  color: ColorManager.white,
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
