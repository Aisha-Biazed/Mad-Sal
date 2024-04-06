import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../core/shared/app_image.dart';
import '../../../../../core/shared/app_text.dart';
import '../../../../../generated/assets.dart';

class AvailableWidget extends StatelessWidget {
  const AvailableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      width: 312.w,
      margin: REdgeInsetsDirectional.only(top: 16.h, bottom: 16.h),
      decoration: BoxDecoration(
          border: Border.all(color: ColorManager.borderGrey),
          borderRadius: BorderRadius.all(Radius.circular(10.r))),
      child: ListTile(
        leading: AppImage.asset(Assets.imagesGirl, width: 90, height: 88),
        title: Row(
          children: [
            AppText(
              "Dr.Lana ",
              textAlign: TextAlign.center,
            ),
            AppText(
              " ",
              textAlign: TextAlign.center,
            ),
          ],
        ),
        subtitle: Row(
          children: [
            AppText(
              "Dentist",
              textAlign: TextAlign.center,
            ),
            20.horizontalSpace,
            Container(
              width: 80.w,
              height: 34.h,
              decoration: BoxDecoration(
                  color: ColorManager.secondaryPrim,
                  borderRadius: BorderRadius.all(Radius.circular(30.r))),
              child: Center(
                child: AppText(
                  "Book",
                  textAlign: TextAlign.center,
                  color: ColorManager.white,
                ),
              ),
            )
          ],
        ),
        trailing: Icon(Icons.more_vert),
        contentPadding: REdgeInsetsDirectional.only(bottom: 20, start: 10),
      ),
    );
  }
}
