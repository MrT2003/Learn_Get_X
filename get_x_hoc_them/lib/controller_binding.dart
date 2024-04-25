import 'package:get/get.dart';
import 'package:get_x_hoc_them/controller/user_controller.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserController());
  }
}
