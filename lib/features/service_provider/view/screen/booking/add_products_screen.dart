import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../core/shared/app_button.dart';
import '../../../../../core/shared/app_image.dart';
import '../../../../../core/shared/app_text.dart';
import '../../../../../core/shared/container_header_widget.dart';
import '../../../../../generated/assets.dart';
import '../../../../patient/view/widgets/auth/custom_text_field.dart';
import '../../widgets/container_widget.dart';

class AddProductsScreen extends StatelessWidget {
  const AddProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          ContainerHeaderWidget(
            textContainer: 'ADD Product',
            imageContainer: Assets.iconsArrowBack,
          ),
          Padding(
            padding: REdgeInsetsDirectional.only(
                start: 16.w, end: 20.w, bottom: 36.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: REdgeInsetsDirectional.only(
                      start: 8.w, end: 7.w, top: 18.h, bottom: 8.h),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorManager.mainGrey,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.r))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppImage.asset(
                            Assets.imagesUploadImg,
                            width: 148.w,
                            height: 125,
                          ),
                          41.horizontalSpace,
                          AppImage.asset(
                            Assets.imagesUploadImg,
                            width: 148.w,
                            height: 125,
                          ),
                        ],
                      ),
                      10.verticalSpace,
                      AppText("Are you sure?"),
                      9.verticalSpace,
                      Row(
                        children: [
                          Container(
                            width: 65.w,
                            height: 42.h,
                            decoration: BoxDecoration(
                                color: ColorManager.primary,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.w))),
                            child: Center(
                                child: AppText.bodySmall(
                              "Yes",
                              color: ColorManager.white,
                            )),
                          ),
                          24.horizontalSpace,
                          Container(
                            width: 65.w,
                            height: 42.h,
                            decoration: BoxDecoration(
                                color: ColorManager.mainGrey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.w))),
                            child: Center(
                                child: AppText.bodySmall(
                              "No",
                            )),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                10.verticalSpace,
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
                      width: 65.w,
                      height: 42.h,
                      decoration: BoxDecoration(
                          color: ColorManager.primary,
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.w))),
                      child: Center(
                          child: AppText.bodySmall(
                        "Yes",
                        color: ColorManager.white,
                      )),
                    ),
                    24.horizontalSpace,
                    Container(
                      width: 65.w,
                      height: 42.h,
                      decoration: BoxDecoration(
                          color: ColorManager.mainGrey,
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.w))),
                      child: Center(
                          child: AppText.bodySmall(
                        "No",
                      )),
                    )
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
          10.verticalSpace,
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
