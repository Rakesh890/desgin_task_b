import 'package:desgin_task_b/app/modules/home_module/home_controller.dart';
//import 'package:desgin_task_b/app/modules/landing_module/landing_controller.dart';
import 'package:desgin_task_b/app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class BottomNavigation extends GetView<HomeController> {
  BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 60,
        margin: EdgeInsets.only(top: 5, left: 2, right: 2),
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
                  Icons.house_outlined,
                  size: 28,
                  color: (controller.selectedTabIndex == 0)
                      ? buttonColor
                      : appSecondaryTextColor,
                ),
              ),
              Tab(
                iconMargin: EdgeInsets.only(top: 3, bottom: 3),
                icon: Icon(
                  Icons.swap_vertical_circle_outlined,
                  size: 28,
                  color: (controller.selectedTabIndex == 1)
                      ? buttonColor
                      : appSecondaryTextColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
