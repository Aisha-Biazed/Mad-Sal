import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal_app/core/shared/app_image.dart';

import '../constant/color_scheme/color_manger.dart';
import 'app_text.dart';

class ContainerHeaderWidget extends StatelessWidget {
  ContainerHeaderWidget(
      {Key? key,
      required this.textContainer,
      this.imageContainer,
      this.textColor,
      this.backgroundColor})
      : super(key: key);

  final String textContainer;
  final String? imageContainer;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 121.h,
      width: double.infinity,
      color: backgroundColor ?? ColorManager.secondaryGrey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          30.horizontalSpace,
          if (imageContainer != null)
            GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: AppImage.asset(imageContainer!)),
          const Spacer(),
          AppText.titleMedium(
            textContainer,
            textAlign: TextAlign.center,
            color: ColorManager.dark,
          ),
          30.horizontalSpace,
          const Spacer(
            flex: 1,
          )
        ],
      ),
    );
  }
}
