import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../core/constant/router/app_routes.dart';
import '../../../../../core/shared/app_button.dart';
import '../../../../../core/shared/app_text.dart';
import '../../../../../core/shared/container_header_widget.dart';
import '../../../../../generated/assets.dart';
import '../../widgets/divider_widget.dart';
import '../../widgets/editing_widget.dart';

class EditingServiceScreen extends StatefulWidget {
  const EditingServiceScreen({Key? key}) : super(key: key);

  @override
  State<EditingServiceScreen> createState() => _EditingServiceScreenState();
}

class _EditingServiceScreenState extends State<EditingServiceScreen> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.white,
        body: Column(
          children: [
            ContainerHeaderWidget(
              textContainer: 'Editing   Services ',
              imageContainer: Assets.iconsArrowBack,
            ),
            RSizedBox(
              height: 550,
              child: ListView(
                children: [
                  15.verticalSpace,
                  AppText.headlineSmall(
                    "Service",
                    textAlign: TextAlign.center,
                    color: ColorManager.secondaryPrim,
                  ),
                  10.verticalSpace,
                  DividerWidget(),
                  EditingWidget(
                    titleCard: 'Service 1',
                    onTap: () {
                      Get.toNamed(AppRoute.addServices);
                    },
                  ),
                  EditingWidget(
                    titleCard: 'Service 1',
                    onTap: () {
                      Get.toNamed(AppRoute.addServices);
                    },
                  ),
                  EditingWidget(
                    titleCard: 'Service 1',
                    onTap: () {
                      Get.toNamed(AppRoute.addServices);
                    },
                  ),
                  EditingWidget(
                    titleCard: 'Service 1',
                    onTap: () {
                      Get.toNamed(AppRoute.addServices);
                    },
                  ),
                  EditingWidget(
                    titleCard: 'Service 1',
                    onTap: () {
                      Get.toNamed(AppRoute.addServices);
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
        ));
  }
}
