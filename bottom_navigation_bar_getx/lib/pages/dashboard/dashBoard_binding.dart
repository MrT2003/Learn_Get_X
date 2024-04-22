import 'package:bottom_navigation_bar_getx/pages/add/add_controller.dart';
import 'package:bottom_navigation_bar_getx/pages/dashboard/dashboard_controller.dart';
import 'package:bottom_navigation_bar_getx/pages/home/home_controller.dart';
import 'package:get/get.dart';

class DashBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashBoardController>(() => DashBoardController());
    Get.lazyPut<HomePageController>(() => HomePageController());
    Get.lazyPut<AddController>(() => AddController());
  }
}
