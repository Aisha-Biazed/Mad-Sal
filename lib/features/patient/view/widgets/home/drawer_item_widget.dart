import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../core/shared/app_text.dart';

class DrawerItem extends StatefulWidget {
  const DrawerItem({
    Key? key,
    required this.text,
    required this.image,
    this.onTap,
  }) : super(key: key);

  final String text;
  final void Function()? onTap;
  final String image;

  @override
  _DrawerItemState createState() => _DrawerItemState();
}

class _DrawerItemState extends State<DrawerItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
        if (widget.onTap != null) {
          widget.onTap!();
        }
      },
      child: Container(
        height: 47.r,
        width: 222.r,
        margin: REdgeInsetsDirectional.only(start: 16.w, end: 16, top: 30),
        decoration: BoxDecoration(
          border: Border.all(color: ColorManager.borderGrey),
          color: ColorManager.white,
        ),
        child: Padding(
          padding: REdgeInsetsDirectional.only(top: 15.h, start: 20.w),
          child: AppText(
            widget.text,
            textAlign: TextAlign.start,
            color: isSelected ? ColorManager.secondaryPrim : ColorManager.dark,
          ),
        ),
      ),
    );
  }
}
