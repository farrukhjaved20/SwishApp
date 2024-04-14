import 'package:get/get.dart';

class PasswordController extends GetxController {
  RxBool isPasswordVisible = false.obs;

  void passwordchange() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }
}
