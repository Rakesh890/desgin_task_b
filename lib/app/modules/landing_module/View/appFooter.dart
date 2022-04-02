import 'package:desgin_task_b/app/modules/home_module/home_controller.dart';
import 'package:desgin_task_b/app/modules/landing_module/landing_controller.dart';
//import 'package:desgin_task_b/app/modules/landing_module/landing_controller.dart';
import 'package:desgin_task_b/app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class AppFooter extends GetView<LandingController> {
  AppFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
        padding: EdgeInsets.only(top: 5, left: 0, right: 0,bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30)),
          color: appPrimaryColor,
        ),
        child: Obx(
          () => TabBar(
            indicatorColor: Colors.transparent,
            onTap: (val) => controller.selectBottomTab(val),
            automaticIndicatorColorAdjustment: true,
            controller: controller.tabController,
            overlayColor: MaterialStateProperty.all(
              Colors.white,
            ),
            labelStyle: const TextStyle(
              fontSize: 12,
            ),
            labelColor: Colors.white,
            tabs: [
              Tab(
                iconMargin: EdgeInsets.only(top: 3, bottom: 3),
                icon: Icon(
                  Icons.dashboard_outlined,
                  size: 26,
                  color: (controller.selectedTabIndex == 0)
                      ? buttonColor
                      : appSecondaryTextColor,
                ),
              ),
              Tab(
                iconMargin: EdgeInsets.only(top: 3, bottom: 3),
                icon: Icon(
                  Icons.account_balance_wallet_outlined,
                  size: 26,
                  color: (controller.selectedTabIndex == 1)
                      ? buttonColor
                      : appSecondaryTextColor,
                ),
              ),
              Tab(
                iconMargin: EdgeInsets.only(top: 3, bottom: 3),
                icon: Icon(Icons.settings_backup_restore_outlined,
                  size: 26,
                  color: (controller.selectedTabIndex == 2)
                      ? buttonColor
                      : appSecondaryTextColor,
                ),
              ),
              Tab(
                iconMargin: EdgeInsets.only(top: 3, bottom: 3),
                icon: Icon(
                  Icons.person_outline,
                  size: 29,
                  color: (controller.selectedTabIndex == 3)
                      ? buttonColor
                      : appSecondaryTextColor,
                ),
              ),
            ],
          ),
        ),
      );
  }
}
