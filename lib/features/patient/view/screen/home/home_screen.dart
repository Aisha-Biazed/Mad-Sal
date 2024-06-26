import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal_app/core/constant/router/app_routes.dart';
import 'package:med_sal_app/core/shared/app_image.dart';
import 'package:med_sal_app/core/shared/app_text.dart';
import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../generated/assets.dart';
import '../../widgets/home/about_section_widget.dart';
import '../../widgets/home/app_bar_widget.dart';
import '../../widgets/home/clients_section_widget.dart';
import '../../widgets/home/drawer_widget.dart';
import '../../widgets/home/search_field_widget.dart';
import '../../widgets/home/section_widget.dart';
import '../../widgets/home/services_section-widget.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        surfaceTintColor: ColorManager.mainGrey,
        width: 251.w,
        child: const DrawerWidget(),
      ),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: ColorManager.secondaryGrey,
        toolbarHeight: 80.h,
        shape: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.secondaryPrim)),
        title: AppBarWidget(),
      ),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: REdgeInsetsDirectional.only(start: 18, end: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  17.verticalSpace,
                  Center(
                    child: AppText.displaySmall(
                      "Med-Sal",
                      color: ColorManager.primary,
                    ).animate(onComplete: (c) => c.repeat()).shimmer(
                        delay: const Duration(milliseconds: 3100),
                        duration: const Duration(milliseconds: 2100)),
                  ),
                  8.verticalSpace,
                  const SearchFieldWidget(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SectionWidget(
                        titleSection: 'register'.tr,
                        onTap: () {
                          Get.toNamed(AppRoute.register);
                        },
                      ),
                      SectionWidget(
                        titleSection: 'login'.tr,
                        onTap: () {
                          Get.toNamed(AppRoute.login);
                        },
                      ),
                      SectionWidget(
                        titleSection: 'contact_us'.tr,
                        onTap: () {},
                      ),
                    ],
                  ),
                  17.verticalSpace,
                  Row(
                    children: [
                      40.horizontalSpace,
                      Container(
                          padding: REdgeInsetsDirectional.only(bottom: 50.h),
                          child: Column(
                            children: [
                              AppImage.asset(Assets.imagesLogo),
                            ],
                          )),
                      30.horizontalSpace,
                      AppImage.asset(
                        Assets.imagesDoctor,
                      ).animate(onComplete: (c) => c.repeat()).shimmer(
                          delay: const Duration(milliseconds: 3100),
                          duration: const Duration(milliseconds: 2100))
                    ],
                  ),
                  AppText.titleMedium(
                    "welcome".tr,
                    color: ColorManager.dark,
                    textAlign: TextAlign.start,
                  ),
                  AppText.titleMedium(
                    "MED-SAL",
                    color: ColorManager.primary,
                    textAlign: TextAlign.start,
                  ),
                  10.verticalSpace,
                  AppText.titleMedium(
                    "get_life".tr,
                    color: ColorManager.primary,
                    textAlign: TextAlign.start,
                  ),
                  20.verticalSpace,
                  AppText.labelSmall(
                    'dont_let'.tr,
                    color: ColorManager.dark,
                  ),
                ],
              ),
            ),
            const AboutSectionWidget(),
            47.verticalSpace,
            const ServicesSectionWidget(),
            const ClientSectionWidget()
          ],
        ),
      ),
    );
  }
}
