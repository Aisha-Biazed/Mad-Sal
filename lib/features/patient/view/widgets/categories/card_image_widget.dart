import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../core/shared/app_image.dart';
import '../../../../../core/shared/app_text.dart';

class CardImageWidget extends StatelessWidget {
  const CardImageWidget({
    Key? key,
    required this.image,
    required this.description,
  }) : super(key: key);
  final String image;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shadowColor: ColorManager.dark,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25.0.r)),
      ),
      child: Container(
        padding: REdgeInsetsDirectional.only(start: 5.w, end: 5.h),
        height: 187.h,
        width: 167.w,
        decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadiusDirectional.all(Radius.circular(25.r))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppImage.asset(
              image,
              height: 99.h,
              width: 157.w,
              fit: BoxFit.contain,
            ),
            AppText(description),
            AppText("Cost 1"),
          ],
        ),
      ),
    );
    // return Card(
    //   elevation: 4.0,
    //   shadowColor: ColorManager.mainGrey,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.all(Radius.circular(25.0.r)),
    //   ),
    //   child: Container(
    //     padding: REdgeInsetsDirectional.only(start: 5.w, end: 5.h),
    //     height: 187.h,
    //     width: 167.w,
    //     decoration: BoxDecoration(
    //         color: ColorManager.white,
    //         borderRadius: BorderRadiusDirectional.all(Radius.circular(25.r))),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.stretch,
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         AppImage.asset(
    //           image,
    //           height: 99.h,
    //           width: 157.w,
    //           fit: BoxFit.contain,
    //         ),
    //         AppText("Service 1"),
    //         AppText("Cost 1"),
    //       ],
    //     ),
    //   ),
    // );
  }
}
