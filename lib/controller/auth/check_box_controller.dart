import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CheckBoxController extends GetxController {
  bool isChecked = false;

  void toggleCheckbox(bool value) {
    isChecked = value;
    update();
  }
}
