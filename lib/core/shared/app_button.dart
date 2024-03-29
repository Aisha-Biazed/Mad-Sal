import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:med_sal_app/core/constant/color_scheme/color_manger.dart';
import 'package:med_sal_app/core/shared/app_text.dart';

import 'app_image.dart';

enum AppButtonType { field, outline, textButton }

class AppButton extends StatelessWidget {
  final AppButtonType _appButton;

  const AppButton.field(
      {super.key,
      this.titleText,
      this.fixedSize,
      this.titleWidget,
      this.isLoading = false,
      this.backgroundColor,
      this.borderRadius,
      this.image,
      this.margin,
      this.imagePath,
      this.onPressed})
      : _appButton = AppButtonType.field,
        spaceBetweenWidgets = null;

  const AppButton.fieldGradient(
      {super.key,
      this.titleText,
      this.margin,
      this.isLoading = false,
      this.titleWidget,
      this.image,
      this.borderRadius,
      this.spaceBetweenWidgets,
      this.fixedSize,
      this.imagePath,
      this.onPressed})
      : backgroundColor = null,
        _appButton = AppButtonType.field;

  const AppButton.textButton(
      {super.key,
      this.titleText,
      this.margin,
      this.borderRadius,
      this.fixedSize,
      this.isLoading = false,
      this.onPressed})
      : _appButton = AppButtonType.textButton,
        imagePath = null,
        image = null,
        spaceBetweenWidgets = null,
        backgroundColor = null,
        titleWidget = null;
  final String? titleText;
  final Widget? titleWidget;
  final Widget? spaceBetweenWidgets;
  final Widget? image;
  final EdgeInsetsGeometry? margin;

  final String? imagePath;
  final VoidCallback? onPressed;
  final Size? fixedSize;
  final BorderRadiusGeometry? borderRadius;
  final Color? backgroundColor;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    switch (_appButton) {
      case AppButtonType.field:
        return Padding(
          padding: margin ?? REdgeInsets.symmetric(horizontal: 28),
          child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                  fixedSize: fixedSize ?? Size.fromHeight(53.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: borderRadius ?? BorderRadius.circular(10.r),
                  ),
                  minimumSize: Size.zero,
                  backgroundColor: backgroundColor ?? ColorManager.primary),
              child: isLoading
                  ? SizedBox(
                      width: 20.r,
                      height: 20.r,
                      child: Center(
                        child: CircularProgressIndicator(
                          color: ColorManager.surface,
                          strokeWidth: 1.r,
                        ),
                      ),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (image != null || imagePath != null)
                          image ?? AppImage.asset(imagePath!),
                        titleWidget ?? AppText(titleText!)
                      ],
                    )),
        );
      case AppButtonType.textButton:
        return TextButton(
          onPressed: onPressed,
          child: isLoading
              ? SizedBox(
                  width: 20.r,
                  height: 20.r,
                  child: Center(
                    child: CircularProgressIndicator(
                      color: ColorManager.primary,
                      strokeWidth: 1.r,
                    ),
                  ),
                )
              : AppText(
                  titleText!,
                  style: TextStyle(
                      color: ColorManager.white,
                      decoration: TextDecoration.underline,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      decorationColor: ColorManager.white),
                ),
        );
      case AppButtonType.outline:
        return const SizedBox();
    }
  }
}
