import 'package:desgin_task_b/app/modules/home_module/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class DashboardController extends GetxController with SingleGetTickerProviderMixin  {


  ScrollController scrollController = ScrollController();
  var isVisible= false.obs;
  late TabController tabController;
  var selectedTabIndex=1.obs;
  Map<String, double> dataMap = {
    "Bitcoin": 5,
    "Ethereum": 3,
    "Ripley": 2,
    "Rubel": 2,
  };
  final colorList = <Color>[
    Colors.yellow,
    Colors.purpleAccent,
    Colors.pinkAccent,
    Colors.blue
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    tabController = TabController(vsync: this, length:2);
    selectedTabIndex.value=1;
    scrollController.addListener(() {
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        isVisible.value = true;
        print("**** ${isVisible.value} Down");
      }

      if (scrollController.position.userScrollDirection == ScrollDirection.forward) {
        isVisible.value = true;
        print("**** ${isVisible.value} UP");
      }

      if(scrollController.position.pixels == scrollController.position.minScrollExtent){
        isVisible.value = false;
      }else if(scrollController.position.pixels == scrollController.position.maxScrollExtent){
        isVisible.value = false;
      }
    });
  }


  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  selectBottomTab(int val)
  {
    selectedTabIndex.value = val;
    if(selectedTabIndex.value == 0){
      Get.offNamed(Routes.HOME);
    }else{
      selectedTabIndex.value=1;
    }
  }

}
