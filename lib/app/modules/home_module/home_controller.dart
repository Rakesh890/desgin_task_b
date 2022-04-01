import 'package:desgin_task_b/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with SingleGetTickerProviderMixin {
  
  ScrollController scrollController = ScrollController();
  var isVisible= false.obs;
  var selectedTabIndex=0.obs;
  late TabController tabController;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    tabController = TabController(vsync: this, length:2);
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
      // Get.toName(Routes.Home);
    }else{
      Get.offNamed(Routes.DASHBOARD);
      selectedTabIndex.value=1;
    }
  }
}
