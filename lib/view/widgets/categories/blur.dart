import 'package:flutter/material.dart';

import '../../../core/constant/color_scheme/color_manger.dart';

class Blur extends StatelessWidget {
  const Blur({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: ColorManager.surface.withOpacity(0.5),
            spreadRadius: 30,
            blurRadius: 30)
      ]),
    );
  }
}
