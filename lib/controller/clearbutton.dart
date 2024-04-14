import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClearbuttonController extends GetxController {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController phonenumbercontroller = TextEditingController();
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController surenamecontroller = TextEditingController();

  void phonefield() {
    phonenumbercontroller.clear();
  }

  void emailfield() {
    emailcontroller.clear();
  }
}
