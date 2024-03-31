import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../core/shared/app_image.dart';
import '../../../../../core/shared/app_text.dart';
import '../../../../../generated/assets.dart';
import '../home/section_widget.dart';
import 'custom_scroll_cat_widget.dart';

class DetailsCategoriesWidget extends StatelessWidget {
  const DetailsCategoriesWidget(
      {Key? key,
      required this.titleCategories,
      required this.imageService1,
      required this.imageService2,
      required this.imageProduct1,
      required this.imageProduct2})
      : super(key: key);
  final String titleCategories;
  final String imageService1;
  final String imageService2;
  final String imageProduct1;
  final String imageProduct2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding:
              REdgeInsetsDirectional.only(start: 18.w, end: 19.w, top: 55.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Transform(
                  transform: Matrix4.identity()
                    ..setEntry(2, 3, 0.001)
                    ..rotateY(0.1),
                  child: Container(
                    height: 80.h,
                    width: 266.w,
                    decoration: BoxDecoration(
                      color: ColorManager.secondaryPrim,
                      borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(25.r),
                          bottomStart: Radius.circular(25.r),
                          bottomEnd: Radius.circular(25.r),
                          topEnd: Radius.circular(40.r)),
                      // border: Border.all(\\
                      //     width: 10, color: ColorManager.secondaryPrim)
                    ),
                    child: Card(
                        color: ColorManager.white,
                        elevation: 6.0,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(25.0.r)),
                        ),
                        shadowColor: ColorManager.dark,
                        margin: REdgeInsetsDirectional.only(
                            start: 9.w, end: 0.w, top: 5.h, bottom: 0.h),
                        child: Center(
                          child: AppText.headlineLarge(
                            titleCategories,
                            color: ColorManager.secondaryPrim,
                            textAlign: TextAlign.center,
                          ),
                        )),
                  ),
                ),
              ),
              16.verticalSpace,
              AppText.labelSmall(
                  "Lorem ipsum dolor sit amet consectetur.\n Lectus lacus phasellus enim vitae id integer\n tincidunt. Tincidunt suspendisse aliquam\n pretium ut dapibus mus ut et."),
              // 41.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SectionWidget(
                    titleSection: 'Services',
                    backgroundColor: ColorManager.white,
                    colorText: ColorManager.dark,
                  ),
                  AppImage.asset(Assets.iconsCirclerVer)
                ],
              ),
              10.verticalSpace,
              CustomScrollCatWidget(
                image1: imageService1,
                image2: imageService2,
                description: "Service 1",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SectionWidget(
                    titleSection: 'Products',
                    backgroundColor: ColorManager.white,
                    colorText: ColorManager.dark,
                  ),
                  AppImage.asset(Assets.iconsCircler)
                ],
              ),
              10.verticalSpace,
              CustomScrollCatWidget(
                image1: imageProduct1,
                image2: imageProduct2,
                description: "Product 1",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
