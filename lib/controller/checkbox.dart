import 'package:get/get.dart';

class CheckboxController extends GetxController {
  RxBool isChecked = false.obs;
  RxString dropdownValue = 'one'.obs;

  void changetick() {
    isChecked.value = !isChecked.value;
  }
}
