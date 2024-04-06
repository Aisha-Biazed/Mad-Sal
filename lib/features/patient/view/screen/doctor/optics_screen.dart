import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../core/shared/app_image.dart';
import '../../../../../core/shared/app_text.dart';
import '../../../../../generated/assets.dart';
import '../../widgets/auth/custom_text_field.dart';
import '../../widgets/doctor/card_dentistry_widget.dart';
import '../../widgets/doctor/container_dentistry_widget.dart';

class OpticsScreen extends StatelessWidget {
  const OpticsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(top: -10, child: AppImage.asset(Assets.imagesOptics)),
          Positioned.fill(
            top: 290.h,
            child: ContainerDentistryWidget(
              child: Padding(
                padding: REdgeInsetsDirectional.only(
                    start: 18.w, end: 17.w, top: 10.h),
                child: ListView(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextField(
                      height: 50,
                      hintText: "Search",
                      contentPadding: REdgeInsetsDirectional.only(
                          end: 16.w, start: 16.w, top: 20.h, bottom: 0.h),
                    ),
                    AppText(
                      "Lorem ipsum dolor sit amet\nconsectetur. Eu enim lectus vitae\nurna.",
                      color: ColorManager.secondaryPrim,
                    ),
                    40.verticalSpace,
                    AppText.titleMedium("Services"),
                    CardDentistryWidget(
                      title: "Whitening Teeth",
                      image: Assets.imagesGirl,
                    ),
                    CardDentistryWidget(
                      title: "Orthodontics",
                      image: Assets.imagesGlass,
                    ),
                    CardDentistryWidget(
                      title: "Cleaning Teeth",
                      image: Assets.imagesLasek,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
