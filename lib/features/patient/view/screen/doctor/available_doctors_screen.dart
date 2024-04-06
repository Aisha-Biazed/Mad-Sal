import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/shared/app_image.dart';
import '../../../../../core/shared/app_text.dart';
import '../../../../../generated/assets.dart';
import '../../widgets/doctor/availble_widget.dart';

import '../../widgets/doctor/container_dentistry_widget.dart';

class AvailableDoctorsScreen extends StatelessWidget {
  const AvailableDoctorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(top: -10, child: AppImage.asset(Assets.imagesLazerPage)),
          Positioned(left: 18.w, top: 250.h, child: AppText("Whitening Teeth")),
          Positioned.fill(
            top: 290.h,
            child: ContainerDentistryWidget(
              child: Padding(
                padding: REdgeInsetsDirectional.only(
                    start: 18.w, end: 17.w, top: 10.h),
                child: ListView(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                          "Available Doctors",
                        ),
                        AppText(
                          "See All",
                        ),
                      ],
                    ),
                    AvailableWidget(),
                    AvailableWidget(),
                    AvailableWidget(),
                    AvailableWidget(),
                    AvailableWidget(),
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
