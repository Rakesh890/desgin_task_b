import '../../app/modules/wallet_module/wallet_page.dart';
import '../../app/modules/wallet_module/wallet_bindings.dart';
import '../../app/modules/profile_module/profile_page.dart';
import '../../app/modules/profile_module/profile_bindings.dart';
import '../../app/modules/landing_module/landing_page.dart';
import '../../app/modules/landing_module/landing_bindings.dart';
import '../../app/modules/dashboard_module/dashboard_page.dart';
import '../../app/modules/dashboard_module/dashboard_bindings.dart';
import '../../app/modules/home_module/home_bindings.dart';
import '../../app/modules/home_module/home_page.dart';
import 'package:get/get.dart';
part './app_routes.dart';
/**
 * GetX Generator - fb.com/htngu.99
 * */

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.DASHBOARD,
      page: () => DashboardPage(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: Routes.LANDING,
      page: () => LandingPage(),
      binding: LandingBinding(),
    ),
    GetPage(
      name: Routes.PROFILE,
      page: () => ProfilePage(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: Routes.WALLET,
      page: () => WalletPage(),
      binding: WalletBinding(),
    ),
  ];
}
