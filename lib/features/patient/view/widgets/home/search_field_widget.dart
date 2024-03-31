import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../core/shared/app_text.dart';
import '../auth/custom_text_field.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      fillColor: ColorManager.white,
      suffixIcon: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          34.horizontalSpace,
          AppText(
            "Search",
            color: ColorManager.mainGrey,
          ),
          const Spacer(),
          Icon(
            Icons.search_outlined,
            color: ColorManager.mainGrey,
          ),
          35.horizontalSpace
        ],
      ),
    );
  }
}
