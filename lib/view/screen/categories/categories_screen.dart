import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal_app/app.dart';
import 'package:med_sal_app/core/constant/color_scheme/color_manger.dart';
import 'package:med_sal_app/core/constant/router/app_routes.dart';
import 'package:med_sal_app/core/shared/app_image.dart';
import 'package:med_sal_app/core/shared/app_text.dart';

import '../../../core/shared/container_header_widget.dart';
import '../../../generated/assets.dart';
import '../../widgets/categories/categories_card_widget.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        backgroundColor: ColorManager.secondaryGrey,
        flexibleSpace: Container(
          color: ColorManager.secondaryGrey,
        ),
        title: ContainerHeaderWidget(
          textContainer: 'Categories',
          imageContainer: Assets.iconsArrowBack,
        ),
        toolbarHeight: 121.h,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            29.verticalSpace,
            CategoriesCardWidget(
              titleCategories: 'Doctor',
              imageCategories: Assets.imagesDocotorCat,
            ),
            CategoriesCardWidget(
              onTap: () {
                Get.toNamed(AppRoute.pharmacies);
              },
              titleCategories: 'Pharmacy',
              imageCategories: Assets.imagesPharmacyCat,
            ),
            CategoriesCardWidget(
              onTap: () {
                Get.toNamed(AppRoute.hospital);
              },
              titleCategories: 'Hospital',
              imageCategories: Assets.imagesHospitalCat,
            ),
            CategoriesCardWidget(
              onTap: () {
                Get.toNamed(AppRoute.labs);
              },
              titleCategories: 'Lab',
              imageCategories: Assets.imagesLabCat,
            ),
            CategoriesCardWidget(
              onTap: () {
                Get.toNamed(AppRoute.clinic);
              },
              titleCategories: 'Clinic',
              imageCategories: Assets.imagesClinicCat,
            ),
          ],
        ),
      ),
    );
  }
}
