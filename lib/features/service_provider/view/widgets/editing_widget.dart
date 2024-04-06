import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constant/color_scheme/color_manger.dart';
import '../../../../../core/shared/app_text.dart';
import '../../../../../core/shared/container_header_widget.dart';
import '../../../../../generated/assets.dart';
import '../screen/booking/editting_services_screen.dart';
import 'button_widget.dart';
import 'card_service_widget.dart';
import 'divider_widget.dart';

class EditingWidget extends StatefulWidget {
  const EditingWidget({Key? key, required this.titleCard, required this.onTap})
      : super(key: key);
  final String titleCard;
  final void Function() onTap;

  @override
  State<EditingWidget> createState() => _EditingWidgetState();
}

class _EditingWidgetState extends State<EditingWidget> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: CardServiceWidget(
        child: Padding(
          padding: REdgeInsetsDirectional.only(
              bottom: 7.h, start: 22.w, end: 11.w, top: 13.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AppText.labelLarge(widget.titleCard),
                  Spacer(),
                  Icon(Icons.more_vert)
                ],
              ),
              20.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Visibility(
                    child: ButtonWidget(
                      title: 'Delete',
                      onTap: () {
                        setState(() {
                          isVisible = false;
                        });
                      },
                    ),
                  ),
                  20.horizontalSpace,
                  ButtonWidget(
                    title: 'Modify',
                    onTap: widget.onTap,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
