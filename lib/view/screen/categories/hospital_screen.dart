import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:med_sal_app/core/constant/color_scheme/color_manger.dart';
import 'package:med_sal_app/core/shared/app_text.dart';

import '../../../core/shared/app_image.dart';
import '../../../generated/assets.dart';
import '../../widgets/categories/custom_scroll_cat_widget.dart';
import '../../widgets/categories/details_categories_widget.dart';
import '../../widgets/home/section_widget.dart';

class HospitalScreen extends StatelessWidget {
  const HospitalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DetailsCategoriesWidget(
      titleCategories: "Hospital",
      imageService1: Assets.imagesHospital1,
      imageService2: Assets.imagesHospital2,
      imageProduct1: Assets.imagesProduct1,
      imageProduct2: Assets.imagesProduct2,
    );
  }
}
