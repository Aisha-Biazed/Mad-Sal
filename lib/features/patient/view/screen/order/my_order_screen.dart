import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal_app/core/shared/app_button.dart';
import 'package:med_sal_app/core/shared/app_image.dart';
import 'package:med_sal_app/features/patient/view/widgets/auth/custom_text_field.dart';

import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../core/constant/router/app_routes.dart';
import '../../../../../core/shared/app_text.dart';
import '../../../../../core/shared/container_header_widget.dart';
import '../../../../../generated/assets.dart';
import '../../widgets/categories/carousal_store.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({Key? key}) : super(key: key);

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
          textContainer: 'My Order',
          imageContainer: Assets.iconsArrowBack,
        ),
        toolbarHeight: 121.h,
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: REdgeInsetsDirectional.only(
                  start: 20.w, end: 20.w, bottom: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  16.verticalSpace,
                  AppText.bodySmall(
                    "Pleas Determine Place of Delivery",
                    color: ColorManager.hint,
                  ),
                  16.verticalSpace,
                  AppImage.asset(Assets.imagesMap),
                  16.verticalSpace,
                  AppText.bodySmall(
                    "Pleas Determine Place of Delivery",
                    color: ColorManager.hint,
                  ),
                  16.verticalSpace,
                  CarousalStore(),
                  16.verticalSpace,
                  AppText.bodySmall(
                    "Enter your information",
                    color: ColorManager.hint,
                  ),
                  16.verticalSpace,
                  AppText.bodySmall(
                    "Card number",
                    color: ColorManager.hint,
                  ),
                  8.verticalSpace,
                  CustomTextField(
                    hintText: "975412863.015633",
                    hintStyle: TextStyle(
                        color: ColorManager.dark,
                        fontFamily: "Almarai",
                        fontSize: 14.sp),
                  ),
                  16.verticalSpace,
                  AppText.bodySmall(
                    "Name on card",
                    color: ColorManager.hint,
                  ),
                  8.verticalSpace,
                  CustomTextField(
                    hintText: "Ali Ahmad",
                    hintStyle: TextStyle(
                        color: ColorManager.dark,
                        fontFamily: "Almarai",
                        fontSize: 14.sp),
                  ),
                  16.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText.labelSmall(
                        "Exp date",
                        color: ColorManager.hint,
                      ),
                      Spacer(),
                      30.horizontalSpace,
                      AppText.bodySmall(
                        "CVV/ CVC",
                        color: ColorManager.hint,
                      ),
                      Spacer()
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: CustomTextField(
                        hintText: "12/11/2025",
                        hintStyle: TextStyle(
                            color: ColorManager.dark,
                            fontFamily: "Almarai",
                            fontSize: 14.sp),
                        height: 60.h,
                      )),
                      12.horizontalSpace,
                      Expanded(
                          child: CustomTextField(
                        hintText: '7894856',
                        hintStyle: TextStyle(
                            color: ColorManager.dark,
                            fontFamily: "Almarai",
                            fontSize: 14.sp),
                        height: 60.h,
                      )),
                    ],
                  ),
                  28.verticalSpace,
                ],
              ),
            ),
            AppButton.field(
              onPressed: () {
                Get.toNamed(AppRoute.orderSuccess);
              },
              titleWidget: AppText(
                "Confirm",
                color: ColorManager.white,
              ),
            ),
            16.verticalSpace,
            AppButton.field(
              backgroundColor: ColorManager.red,
              onPressed: () {
                Get.toNamed(AppRoute.orderFailed);
              },
              titleWidget: AppText(
                "Cancel",
                color: ColorManager.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
