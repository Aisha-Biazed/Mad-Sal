import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../core/shared/app_image.dart';
import '../../../../../core/shared/app_text.dart';

class ProductsBookingWidget extends StatelessWidget {
  const ProductsBookingWidget({Key? key, required this.image})
      : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return RSizedBox(
      height: 300.h,
      child: Stack(
        children: [
          Positioned(
            top: 50,
            child: Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25.0.r)),
              ),
              child: Container(
                height: 208.h,
                width: 320.w,
                decoration: BoxDecoration(
                    border: Border.all(color: ColorManager.primary),
                    borderRadius:
                        BorderRadiusDirectional.all(Radius.circular(25.r))),
                padding: REdgeInsetsDirectional.only(start: 17.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    16.verticalSpace,
                    AppText.labelLarge("Products 1"),
                    AppText.labelSmall("Company:  Name 1"),
                    AppText.labelSmall("Cost:  Cost 1"),
                    AppText.labelSmall("Quantity: 2"),
                    AppText.labelSmall("Description: Easy to use"),
                    AppText.labelSmall("Date of request: MM / DD"),
                    16.verticalSpace
                  ],
                ),
              ),
            ),
          ),
          Positioned(top: 10, left: 200, child: AppImage.asset(image)),
        ],
      ),
    );
  }
}
