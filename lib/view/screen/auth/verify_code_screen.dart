import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal_app/core/shared/app_button.dart';
import 'package:med_sal_app/core/shared/app_text.dart';
import 'package:pinput/pinput.dart';

import '../../../core/constant/color_scheme/color_manger.dart';

class VerifyCodeScreen extends StatelessWidget {
  const VerifyCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: REdgeInsetsDirectional.only(start: 17.w, end: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppText.labelLarge("enter_verification".tr),
            50.verticalSpace,
            Pinput(
              length: 8,
              textInputAction: TextInputAction.done,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              onCompleted: (value) {},
              defaultPinTheme: PinTheme(
                  height: 44.h,
                  width: 44.w,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 1.0,
                      color: ColorManager.mainGrey,
                    ),
                  )),
            ),
            53.verticalSpace,
            AppButton.field(
              onPressed: () {},
              titleWidget: AppText(
                "verify".tr,
                color: ColorManager.white,
              ),
            ),
            36.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText.bodyMedium("dont_receive".tr),
                10.horizontalSpace,
                AppText.bodyMedium(
                  "resend".tr,
                  color: ColorManager.primary,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
