import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal_app/core/constant/router/app_routes.dart';

import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../core/localization/change_local.dart';
import '../../../../../core/shared/app_image.dart';
import '../../../../../core/shared/app_text.dart';
import '../../../../../generated/assets.dart';

class AppBarWidget extends GetView<LocaleController> {
  AppBarWidget({Key? key}) : super(key: key);
  // String selectedLanguage = "EN";
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
            onTap: () {
              Get.toNamed(AppRoute.settings);
            },
            child: AppImage.asset(Assets.iconsUser)),
        24.horizontalSpace,
        AppImage.asset(Assets.iconsCall),
        34.horizontalSpace,
        Icon(
          Icons.alternate_email,
          color: ColorManager.dark,
        ),
        const Spacer(),
        Container(
            height: 40.h,
            decoration:
                BoxDecoration(border: Border.all(color: ColorManager.dark)),
            child: DropdownButton<String>(
              padding: REdgeInsetsDirectional.only(
                  start: 5.w, end: 5, top: 5.h, bottom: 5.h),
              underline: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent)),
              ),
              value: controller.selectedLanguage,
              onChanged: (newValue) {
                controller.changeLang(newValue!);
                print(newValue);
              },
              items: ["EN", "AR"].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: AppText.bodyMedium(value),
                );
              }).toList(),
            )),
        8.horizontalSpace,
        AppImage.asset(Assets.iconsFilterAlt),
        13.horizontalSpace,
        AppImage.asset(Assets.iconsList),
      ],
    );
  }
}
