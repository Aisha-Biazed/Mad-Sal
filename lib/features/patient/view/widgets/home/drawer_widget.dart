import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../core/constant/router/app_routes.dart';
import '../../../../../core/shared/app_image.dart';
import '../../../../../core/shared/app_text.dart';
import '../../../../../generated/assets.dart';
import 'drawer_item_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          DrawerItem(
              text: "Home",
              image: Assets.iconsEdit,
              onTap: () {
                Get.toNamed(AppRoute.home);
              }),
          DrawerItem(
              text: "Categories",
              image: Assets.iconsEdit,
              onTap: () {
                Get.toNamed(AppRoute.categories);
              }),
          DrawerItem(
              text: "Setting",
              image: Assets.iconsEdit,
              onTap: () {
                Get.toNamed(AppRoute.settings);
              }),
          DrawerItem(
              text: "State Booking",
              image: Assets.iconsEdit,
              onTap: () {
                Get.toNamed(AppRoute.stateBooking);
              }),
          DrawerItem(
              text: "Log Out",
              image: Assets.iconsEdit,
              onTap: () {
                // Get.toNamed(AppRoute.categories);
              }),
        ],
      ),
    );
  }
}
