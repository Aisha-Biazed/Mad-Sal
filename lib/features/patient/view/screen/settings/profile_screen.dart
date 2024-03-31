import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:med_sal_app/core/constant/color_scheme/color_manger.dart';
import 'package:med_sal_app/core/shared/app_image.dart';
import 'package:med_sal_app/core/shared/app_text.dart';
import 'package:med_sal_app/core/shared/container_header_widget.dart';
import '../../../../../generated/assets.dart';
import '../../widgets/settings/card_profile_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Column(
        children: [
          ContainerHeaderWidget(
            textContainer: "My Profile",
            backgroundColor: ColorManager.primary,
            imageContainer: Assets.iconsSettings,
          ),
          Container(
            height: 326.h,
            width: double.infinity,
            decoration: BoxDecoration(
                color: ColorManager.primary,
                borderRadius: BorderRadiusDirectional.only(
                    bottomEnd: Radius.circular(45.r),
                    bottomStart: Radius.circular(45.r))),
            child: Column(
              children: [
                AppImage.asset(
                  Assets.imagesProfile,
                  width: 220.w,
                  height: 220.h,
                ),
                30.verticalSpace,
                AppText.titleMedium("Patient")
              ],
            ),
          ),
          CardProfileWidget(
            title: 'Email',
            subtitle: 'yourname @mail.com',
            icon: Icons.mail_outline,
          ),
          CardProfileWidget(
            title: 'Phone',
            subtitle: '08954752516',
            icon: Icons.call,
          ),
          CardProfileWidget(
            title: 'Date of joining',
            subtitle: '25 / 10 / 2023',
            icon: Icons.calendar_today_outlined,
          ),
        ],
      ),
    );
  }
}
