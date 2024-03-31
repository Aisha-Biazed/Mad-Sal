import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constant/color_scheme/color_manger.dart';
import '../../../core/shared/app_text.dart';
import '../../../core/shared/container_header_widget.dart';
import '../../../generated/assets.dart';
import '../../widgets/categories/services_booking_widget.dart';

class ServicesBookingScreen extends StatelessWidget {
  const ServicesBookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ContainerHeaderWidget(
            textContainer: 'Services booking',
            imageContainer: Assets.iconsArrowBack,
          ),
          15.verticalSpace,
          AppText.headlineSmall(
            "Services",
            color: ColorManager.secondaryPrim,
          ),
          Container(
            height: 4.h, // Thickness of the line
            margin: EdgeInsets.symmetric(horizontal: 140.w),
            decoration: BoxDecoration(
              color: ColorManager.ThirdPrim, // Line color
              boxShadow: [
                BoxShadow(
                  color: ColorManager.mainGrey.withOpacity(0.8), // Shadow color
                  spreadRadius: 2, // Spread radius
                  blurRadius: 4, // Blur radius
                  offset: Offset(0, 2), // Offset in x and y direction
                ),
              ],
            ),
          ),
          20.verticalSpace,
          ServicesBookingWidget(),
          20.verticalSpace,
          ServicesBookingWidget(),
        ],
      ),
    );
  }
}
