import 'package:get/get.dart';

class ControllerState extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
  }
}
