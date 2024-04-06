import 'package:flutter/material.dart';

import '../../../../../generated/assets.dart';
import '../../widgets/categories/details_widget.dart';

class LabsScreen extends StatelessWidget {
  const LabsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DetailsWidget(
      titleCategories: "Labs",
      imageService1: Assets.imagesLabs1,
      imageService2: Assets.imagesLabs2,
      imageProduct1: Assets.imagesLabs3,
      imageProduct2: Assets.imagesLabs4,
    );
  }
}
