import 'package:desgin_task_b/app/modules/dashboard_module/dashboard_page.dart';
import 'package:desgin_task_b/app/modules/profile_module/profile_page.dart';
import 'package:desgin_task_b/app/modules/wallet_module/wallet_page.dart';
import 'package:desgin_task_b/app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:desgin_task_b/app/modules/landing_module/landing_controller.dart';

import '../../layout/customappbar.dart';
import '../home_module/home_page.dart';
import 'View/appFooter.dart';

class LandingPage extends GetView<LandingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
         preferredSize:Size.fromHeight(60),
        child: Container(
          color: appPrimaryColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:12.0),
            child: CustomAppBar(controller.screenName.value),
          ),
        ),
      ),
      body: Container(
        child: Obx(() => IndexedStack(
              index: controller.selectedTabIndex.value,
              children: [
                HomePage(),
                WalletPage(),
                DashboardPage(),
                ProfilePage()
              ],
            )),
      ),
      bottomNavigationBar: _buildFooter(),
    );
  }

  _buildFooter() {

    return Obx(() =>
      (controller.isVisibleFooter.value == true)
          ? Container(
        height: 0,
      ) : AppFooter(),
    );
  }
}
