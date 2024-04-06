import 'package:flutter/material.dart';
import '../../../../../generated/assets.dart';
import '../../widgets/categories/details_widget.dart';

class HospitalScreen extends StatelessWidget {
  const HospitalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DetailsWidget(
      titleCategories: "Hospital",
      imageService1: Assets.imagesHospital1,
      imageService2: Assets.imagesHospital2,
      imageProduct1: Assets.imagesProduct1,
      imageProduct2: Assets.imagesProduct2,
    );
  }
}
