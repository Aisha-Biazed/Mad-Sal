import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal_app/core/constant/router/app_routes.dart';
import 'package:med_sal_app/core/shared/app_button.dart';

import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../core/shared/app_text.dart';
import '../../../../../core/shared/container_header_widget.dart';
import '../../../../../generated/assets.dart';
import '../../widgets/divider_widget.dart';
import '../../widgets/editing_widget.dart';

class EditingProductsScreen extends StatelessWidget {
  const EditingProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Column(
        children: [
          ContainerHeaderWidget(
            textContainer: 'Editing Products',
            imageContainer: Assets.iconsArrowBack,
          ),
          SizedBox(
            height: 500,
            child: ListView(
              children: [
                15.verticalSpace,
                AppText.headlineSmall(
                  "Products",
                  textAlign: TextAlign.center,
                  color: ColorManager.secondaryPrim,
                ),
                10.verticalSpace,
                DividerWidget(),
                EditingWidget(
                  titleCard: 'Product 1',
                  onTap: () {
                    Get.toNamed(AppRoute.addProducts);
                  },
                ),
                EditingWidget(
                  titleCard: 'Product 1',
                  onTap: () {
                    Get.toNamed(AppRoute.addProducts);
                  },
                ),
                EditingWidget(
                  titleCard: 'Product 1',
                  onTap: () {
                    Get.toNamed(AppRoute.addProducts);
                  },
                ),
                EditingWidget(
                  titleCard: 'Product 1',
                  onTap: () {
                    Get.toNamed(AppRoute.addProducts);
                  },
                ),
                EditingWidget(
                  titleCard: 'Product 1',
                  onTap: () {
                    Get.toNamed(AppRoute.addProducts);
                  },
                ),
              ],
            ),
          ),
          75.verticalSpace,
          AppButton.field(
            onPressed: () {},
            titleWidget: AppText(
              "ADD",
              color: ColorManager.white,
            ),
          ),
        ],
      ),
    );
  }
}
