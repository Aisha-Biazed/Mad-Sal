import 'package:flutter/material.dart';
import 'package:med_sal_app/core/constant/generated/assets.dart';

import '../../../core/shared/container_header_widget.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ContainerHeaderWidget(
              textContainer: 'Categories',
              imageContainer: Assets.iconsArrowBack,
            )
          ],
        ),
      ),
    );
  }
}
