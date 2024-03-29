import 'package:flutter/material.dart';
import '../constant/color_scheme/color_manger.dart';
import 'app_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: AppText(
        title,
        color: ColorManager.grey,
      ),
      centerTitle: true, // Center the title
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
