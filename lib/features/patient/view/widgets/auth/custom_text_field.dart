import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal_app/core/shared/app_text.dart';

import '../../../../../core/constant/color_scheme/color_manger.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      this.label,
      this.suffixIcon,
      this.prefixIcon,
      this.margin,
      this.name,
      this.height,
      this.hintText,
      this.hintStyle,
      this.hintMaxLines,
      this.textAlign,
      this.textDirection,
      this.readOnly = false,
      this.labelStyle,
      this.fillColor,
      this.contentPadding})
      : super(key: key);
  final String? label;
  final bool readOnly;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final EdgeInsets? margin;
  final String? name;
  final double? height;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final int? hintMaxLines;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Color? fillColor;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    return RSizedBox(
      height: height ?? 90.h,
      child: TextFormField(
        cursorColor: ColorManager.grey,
        readOnly: readOnly,
        decoration: InputDecoration(
          label: label != null
              ? AppText(
                  label!,
                )
              : null,
          labelStyle: labelStyle ??
              context.textTheme.labelSmall?.copyWith(
                color: ColorManager.dark,
              ),
          hintText: hintText,
          hintStyle: hintStyle ??
              context.textTheme.labelSmall?.copyWith(
                  color: ColorManager.mainGrey,
                  fontSize: 17.sp,
                  fontFamily: 'Almarai'),
          floatingLabelAlignment: FloatingLabelAlignment.start,
          hintMaxLines: hintMaxLines,
          isDense: true,
          contentPadding: contentPadding ??
              REdgeInsetsDirectional.only(
                  end: 16.w, start: 16.w, top: 40.h, bottom: 0.h),
          fillColor: ColorManager.surface,
          focusColor: ColorManager.surface,
          // alignLabelWithHint: alignLabelWithHint,
          suffixIcon: suffixIcon,
          prefixIconConstraints:
              BoxConstraints(maxHeight: 40.h, minHeight: 10.h, minWidth: 40.w),
          prefixIcon: prefixIcon,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.outline),
            borderRadius: BorderRadius.circular(10.r),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.outline),
            borderRadius: BorderRadius.circular(10.r),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.onSurfaceVariant),
            borderRadius: BorderRadius.circular(10.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.primary),
            // borderSide: BorderSide(color: context.colorScheme.primary),
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
        textAlign: textAlign ?? TextAlign.start,
        textDirection: textDirection,
      ),
    );
  }
}
