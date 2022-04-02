import 'package:desgin_task_b/app/modules/home_module/home_controller.dart';
import 'package:get/get.dart';

import '../dashboard_module/dashboard_controller.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    // Get.lazyPut(() => DashboardController());
  }
}