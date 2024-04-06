import 'package:flutter/material.dart';

import '../../../../../generated/assets.dart';
import '../../widgets/categories/details_widget.dart';

class PharmaciesScreen extends StatelessWidget {
  const PharmaciesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DetailsWidget(
      titleCategories: "Pharmacies",
      imageService1: Assets.imagesPharmacies1,
      imageService2: Assets.imagesPharmacies2,
      imageProduct1: Assets.imagesPharmacies3,
      imageProduct2: Assets.imagesPharmacies4,
    );
  }
}
