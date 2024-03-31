import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../generated/assets.dart';
import '../constant/color_scheme/color_manger.dart';
import 'app_text.dart';
import 'container_header_widget.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorManager.secondaryGrey,
      flexibleSpace: Container(
        color: ColorManager.secondaryGrey,
      ),
      title: ContainerHeaderWidget(
        textContainer: title,
        imageContainer: Assets.iconsArrowBack,
      ),
      toolbarHeight: 200.h,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
