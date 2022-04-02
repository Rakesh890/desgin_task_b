import 'package:flutter/material.dart';
import 'package:get/get.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class LandingController extends GetxController with SingleGetTickerProviderMixin {

  late TabController tabController;
  var selectedTabIndex=0.obs;
  RxBool isVisibleFooter = false.obs;
  RxString screenName="".obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    //init tabbar for bottom footer
    tabController = TabController(vsync: this, length:4);
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

  selectBottomTab(int val) {
    selectedTabIndex.value=val;
    if(selectedTabIndex.value == 0){
      screenName.value ="Home";
    }else if(selectedTabIndex.value == 1){
      screenName.value ="Wallet";
    }else if(selectedTabIndex.value == 2){
      screenName.value ="My Transaction";
    }else if(selectedTabIndex.value == 3){
      screenName.value ="Profile";
    }
  }
}
