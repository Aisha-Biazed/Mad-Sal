import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:med_sal_app/core/shared/app_button.dart';
import 'package:med_sal_app/core/shared/app_image.dart';
import 'package:med_sal_app/core/shared/app_text.dart';
import 'package:med_sal_app/features/patient/view/widgets/auth/custom_text_field.dart';

import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../core/shared/container_header_widget.dart';
import '../../../../../generated/assets.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

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
          textContainer: 'Details',
          imageContainer: Assets.iconsArrowBack,
        ),
        toolbarHeight: 121.h,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: REdgeInsetsDirectional.only(start: 19.w, end: 19.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  16.verticalSpace,
                  AppText(
                    "Shipping Address",
                    textAlign: TextAlign.start,
                  ),
                  10.verticalSpace,
                  Stack(
                    children: [
                      AppImage.asset(Assets.imagesMapImg),
                      Positioned(
                          top: 20.h,
                          left: 9.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText("Address Name"),
                              10.verticalSpace,
                              AppText(
                                  "Lorem ipsum dolor sit amet consectetur."),
                            ],
                          ))
                    ],
                  ),
                  32.verticalSpace,
                  AppText(
                    "Order Summery",
                    color: ColorManager.hint,
                    textAlign: TextAlign.start,
                  ),
                  10.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppImage.asset(Assets.imagesPro1),
                      AppImage.asset(Assets.imagesPro2),
                    ],
                  ),
                  21.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText("Product1\n12\$"),
                      Spacer(),
                      20.horizontalSpace,
                      AppText("Product2\n47\$"),
                      Spacer()
                    ],
                  ),
                  11.verticalSpace,
                  AppText(
                    "Total Price: 39\$",
                    color: ColorManager.greyIcon,
                  ),
                  35.verticalSpace,
                  AppText(
                    "Payment method",
                    color: ColorManager.hint,
                  ),
                  20.verticalSpace,
                  Stack(
                    children: [
                      AppImage.asset(Assets.imagesPaym),
                      Positioned(
                        top: 40.h,
                        left: 20.w,
                        child: AppImage.asset(Assets.imagesGooglePayment),
                      )
                    ],
                  ),
                  16.verticalSpace,
                  AppText(
                    "Delivery State",
                    color: ColorManager.hint,
                  ),
                  8.verticalSpace,
                  CustomTextField(
                    height: 50.h,
                    hintText: "Products will arrive at 15:00 PM by DHL",
                  ),
                  10.verticalSpace,
                  AppImage.asset(Assets.imagesRange),
                  10.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText("15:00"),
                      AppText("13:00"),
                    ],
                  )
                ],
              ),
            ),
            AppText("Product will arrive  after two hours  "),
            39.verticalSpace,
            AppButton.field(
              backgroundColor: ColorManager.secondaryPrim,
              onPressed: () {},
              titleWidget: AppText(
                "Confirm",
                color: ColorManager.white,
              ),
            ),
            25.verticalSpace
          ],
        ),
      ),
    );
  }
}
