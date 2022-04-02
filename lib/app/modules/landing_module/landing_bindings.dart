import 'package:desgin_task_b/app/modules/dashboard_module/dashboard_controller.dart';
import 'package:desgin_task_b/app/modules/landing_module/landing_controller.dart';
import 'package:desgin_task_b/app/modules/profile_module/profile_controller.dart';
import 'package:desgin_task_b/app/modules/wallet_module/wallet_controller.dart';
import 'package:get/get.dart';

import '../home_module/home_controller.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class LandingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LandingController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => DashboardController());
    Get.put(() => WalletController());
    Get.put(() => ProfileController());

  }
}