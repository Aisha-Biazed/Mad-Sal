import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal_app/core/shared/app_button.dart';

import '../../core/constant/color_scheme/color_manger.dart';
import '../../core/constant/router/app_routes.dart';
import '../../core/localization/change_local.dart';
import '../../core/shared/app_text.dart';

class Language extends GetView<LocaleController> {
  Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // String selectedLanguage = controller.changeLang("en");
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("1".tr, style: Theme.of(context).textTheme.headline1),
              const SizedBox(height: 20),
              AppButton.field(
                  titleText: "Ar",
                  onPressed: () {
                    controller.changeLang("AR");
                    Get.toNamed(AppRoute.login);
                  }),
              40.verticalSpace,
              AppButton.field(
                  titleText: "En",
                  onPressed: () {
                    controller.changeLang("EN");
                    Get.toNamed(AppRoute.login);
                  }),
              Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                      border: Border.all(color: ColorManager.dark)),
                  child: DropdownButton<String>(
                    padding: REdgeInsetsDirectional.only(
                        start: 5.w, end: 5, top: 5.h, bottom: 5.h),
                    underline: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.transparent)),
                    ),
                    value: "EN",
                    onChanged: (newValue) {
                      controller.changeLang(newValue!);
                    },
                    items: ["EN", "AR"]
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: AppText.bodyMedium(value),
                      );
                    }).toList(),
                  )),
            ],
          )),
    );
  }
}
