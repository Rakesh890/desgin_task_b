import 'package:desgin_task_b/app/modules/dashboard_module/dashboard_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../theme/app_colors.dart';

class BottomNavigation_dash extends GetView<DashboardController>
{
  BottomNavigation_dash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Container(
        height: 60,
        margin: EdgeInsets.only(bottom: 0,left: 0,right: 0),
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30)
          ),
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
            labelStyle: const TextStyle(fontSize: 12,
            ),
            labelColor: Colors.white,
            tabs:[
              Tab(
                iconMargin: EdgeInsets.only(top: 3,bottom: 3),
                icon:  Icon(Icons.house_outlined,size: 28,color:(controller.selectedTabIndex == 0) ? buttonColor : appSecondaryTextColor ,),
              ),
              Tab(
                iconMargin: EdgeInsets.only(top: 3,bottom: 3),
                icon:Icon(Icons.swap_vertical_circle_outlined,size: 28,color:(controller.selectedTabIndex == 1) ? buttonColor : appSecondaryTextColor ,),
              ),

            ],
          ),
        ),
      ),
    );
  }


}