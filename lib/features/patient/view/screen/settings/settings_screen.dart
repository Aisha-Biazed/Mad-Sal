import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal_app/core/shared/app_button.dart';
import 'package:med_sal_app/core/shared/app_text.dart';
import 'package:med_sal_app/core/shared/container_header_widget.dart';

import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../core/constant/router/app_routes.dart';
import '../../../../../generated/assets.dart';
import '../../widgets/settings/card_settings_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ContainerHeaderWidget(
              textContainer: "Settings", imageContainer: Assets.iconsSettings),
          Padding(
            padding:
                REdgeInsetsDirectional.only(start: 18.w, end: 18.w, top: 32.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText.titleMedium("Account", color: ColorManager.primary),
                23.verticalSpace,
                CardSettingsWidget(
                  title: "Edit My Profile",
                  imageCard: Assets.iconsEdit,
                  onTap: () {
                    Get.toNamed(AppRoute.profile);
                  },
                ),
                CardSettingsWidget(
                  title: "Change Password",
                  imageCard: Assets.iconsSyncLock,
                  onTap: () {
                    Get.toNamed(AppRoute.resetPassword);
                  },
                ),
                CardSettingsWidget(
                  title: "Help",
                  imageCard: Assets.iconsNotListedLocation,
                  onTap: () {},
                ),
                CardSettingsWidget(
                  title: "Dark mode",
                  imageCard: Assets.iconsClearNight,
                  onTap: () {},
                ),
                AppButton.field(
                  onPressed: () {
                    Get.offNamed(AppRoute.home);
                  },
                  imagePath: Assets.iconsMoveItem,
                  titleWidget: Padding(
                    padding: REdgeInsetsDirectional.only(start: 26.w),
                    child: AppText.bodyMedium(
                      "Logout",
                      color: ColorManager.white,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
