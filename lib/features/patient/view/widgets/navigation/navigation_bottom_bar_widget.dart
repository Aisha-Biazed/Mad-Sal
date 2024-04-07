import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../controller/navigation_bar_controller.dart';
import '../../../../../core/constant/color_scheme/color_manger.dart';
import 'custom_button_bar_widget.dart';

class NavigationBottomBarWidget extends StatelessWidget {
  const NavigationBottomBarWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationBarControllerImp>(
        builder: (controller) => BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 10,
            child: Row(
              children: [
                ...List.generate(controller.listPage.length + 1, ((index) {
                  int i = index > 2 ? index - 1 : index;
                  return index == 2
                      ? const Spacer()
                      : ButtonBarWidget(
                          icondata: controller.bottomAppbar[i]['icon'],
                          onPressed: () {
                            controller.changePage(i);
                          },
                          active: controller.currentPage == i ? true : false);
                }))
              ],
            )));
  }
}
