import 'package:flutter/material.dart';

import '../../../../../generated/assets.dart';
import '../../widgets/categories/details_widget.dart';

class ClinicScreen extends StatelessWidget {
  const ClinicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DetailsWidget(
      titleCategories: "Clinic",
      imageService1: Assets.imagesClinc1,
      imageService2: Assets.imagesClinc2,
      imageProduct1: Assets.imagesClinc3,
      imageProduct2: Assets.imagesClinc4,
    );
    ;
  }
}
