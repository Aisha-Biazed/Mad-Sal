import 'package:get/get.dart';

import '../controller/auth/check_box_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    final CheckBoxController checkController = Get.put(CheckBoxController());
  }
}
