import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/color_scheme/color_manger.dart';
import '../../../core/shared/app_image.dart';
import '../../../core/shared/app_text.dart';
import '../../../generated/assets.dart';

class CategoriesCardWidget extends StatelessWidget {
  const CategoriesCardWidget(
      {Key? key,
      required this.titleCategories,
      required this.imageCategories,
      this.onTap})
      : super(key: key);
  final String titleCategories;
  final String imageCategories;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: ColorManager.white,
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0.r)),
        ),
        shadowColor: ColorManager.dark,
        margin: REdgeInsetsDirectional.only(start: 16.w, end: 17.w, top: 16.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            14.horizontalSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText.titleMedium(
                  titleCategories,
                  color: ColorManager.primary,
                ),
                8.verticalSpace,
                AppText.bodyMedium("Description"),
                8.verticalSpace,
                AppText.bodySmall(
                  "Lorem ipsum dolor sit amet\n consectetur. Neque eget viverra amet\n risus lorem egestas viverra in risus.\n Ullamcorper nunc eget lacus feugiat\n risus sit habitant ullamcorper.",
                ),
              ],
            ),
            AppImage.asset(
              imageCategories,
              fit: BoxFit.fitHeight,
            )
          ],
        ),
      ),
    );
  }
}
