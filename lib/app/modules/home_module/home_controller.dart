import 'package:desgin_task_b/app/modules/landing_module/landing_controller.dart';
import 'package:desgin_task_b/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with SingleGetTickerProviderMixin {
  
  ScrollController scrollController = ScrollController();
  RxBool isVisible= false.obs;
  var selectedTabIndex=0.obs;
  late TabController tabController;
  RxList userCardsList = [].obs;
  final LandingController landingController = Get.find();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    //init tabbar for bottom footer
    tabController = TabController(vsync: this, length:2);
    //init scroll event function when we scroll card list
    _initUserCardScrolleEvent();
    //init user card list
    initCardList();
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
    // selectedTabIndex.value = val;
    // if(selectedTabIndex.value == 0){
    //   // Get.toName(Routes.Home);
    // }else{
    //   Get.offNamed(Routes.DASHBOARD);
    //   selectedTabIndex.value=1;
    // }
    landingController.isVisibleFooter.value=true;
  }

  void initCardList()
  {
    userCardsList.value..add({
      "image":"assets/images/cards.jpeg",
    })..add({
      "image":"assets/images/cards.jpeg",
    })..add({
      "image":"assets/images/cards.jpeg",
    })..add({
      "image":"assets/images/cards.jpeg",
    });
  }

  void _initUserCardScrolleEvent()
  {
    scrollController.addListener(() {
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        //isVisible.value = true;
        landingController.isVisibleFooter.value=true;
        print("**** ${isVisible.value} Down");
      }

      if (scrollController.position.userScrollDirection == ScrollDirection.forward) {
        //isVisible.value = true;
        landingController.isVisibleFooter.value=true;
        print("**** ${isVisible.value} UP");
      }

      if(scrollController.position.pixels == scrollController.position.minScrollExtent){
        //isVisible.value = false;
        landingController.isVisibleFooter.value=false;
      }else if(scrollController.position.pixels == scrollController.position.maxScrollExtent){
       // isVisible.value = false;
        landingController.isVisibleFooter.value=false;
      }
    });
  }
}
