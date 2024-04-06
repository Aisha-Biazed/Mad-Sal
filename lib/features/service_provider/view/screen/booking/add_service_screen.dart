import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:med_sal_app/core/shared/app_button.dart';
import 'package:med_sal_app/core/shared/app_text.dart';

import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../core/shared/container_header_widget.dart';
import '../../../../../generated/assets.dart';
import '../../../../patient/view/widgets/auth/custom_text_field.dart';
import '../../widgets/container_widget.dart';

class AddServiceScreen extends StatelessWidget {
  const AddServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          ContainerHeaderWidget(
            textContainer: 'ADD Service',
            imageContainer: Assets.iconsArrowBack,
          ),
          Padding(
            padding: REdgeInsetsDirectional.only(
                top: 16.h, start: 16.w, end: 20.w, bottom: 36.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextField(
                  label: "Enter Name of Service",
                  hintText: "Pleas Enter Name of Service",
                  suffixIcon: Icon(
                    Icons.edit,
                    size: 24.w,
                    color: ColorManager.mainGrey,
                  ),
                ),
                CustomTextField(
                  label: "Enter Name of Category",
                  hintText: "Pleas Enter Name of Category",
                  suffixIcon: Icon(
                    Icons.edit,
                    size: 24.w,
                    color: ColorManager.mainGrey,
                  ),
                ),
                CustomTextField(
                  label: "Enter Cost",
                  hintText: "Please Enter Cost",
                  suffixIcon: Icon(
                    Icons.edit,
                    size: 24.w,
                    color: ColorManager.mainGrey,
                  ),
                ),
                AppText("Have a Discount?"),
                8.verticalSpace,
                Row(
                  children: [
                    Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                          color: ColorManager.primary,
                          borderRadius:
                              BorderRadius.all(Radius.circular(50.w))),
                      child: Center(
                          child: AppText.bodySmall(
                        "Yes",
                        color: ColorManager.white,
                      )),
                    ),
                    24.horizontalSpace,
                    Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                          color: ColorManager.borderGrey,
                          borderRadius:
                              BorderRadius.all(Radius.circular(50.w))),
                      child: Center(child: AppText.bodySmall("No")),
                    ),
                  ],
                ),
                35.verticalSpace,
                CustomTextField(
                  label: "Enter Discount",
                  hintText: "Pleas Enter Discount %",
                  suffixIcon: Icon(
                    Icons.edit,
                    size: 24.w,
                    color: ColorManager.mainGrey,
                  ),
                ),
              ],
            ),
          ),
          145.verticalSpace,
          AppButton.fieldGradient(
            onPressed: () {},
            titleWidget: AppText(
              "Confirm",
              color: ColorManager.white,
            ),
          )
        ],
      ),
    );
  }
}
