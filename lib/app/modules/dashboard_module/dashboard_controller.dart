import 'package:desgin_task_b/app/modules/home_module/home_controller.dart';
import 'package:desgin_task_b/app/modules/landing_module/landing_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class DashboardController extends GetxController with SingleGetTickerProviderMixin  {


  ScrollController scrollController = ScrollController();
  RxBool isVisible= false.obs;
  late TabController tabController;
  final LandingController landingController = Get.find();


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
  RxList userTransactionList = [].obs;


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    //init Tab
    tabController = TabController(vsync: this, length:2);
    //Transaction Scroll Function
    _transactionScrollerEvent();
    //init transaction list
    initTransactionList();
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
    //Remove scroller controller from memory
    scrollController.dispose();
  }


  void _transactionScrollerEvent()
  {
    scrollController.addListener(() {
      //When we start scrolling down
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        landingController.isVisibleFooter.value=true;
      }

      //When start scrolling up side
      if (scrollController.position.userScrollDirection == ScrollDirection.forward) {
        landingController.isVisibleFooter.value=true;
      }

      //Check that min and max value when we reach on bottom and top
      if(scrollController.position.pixels == scrollController.position.minScrollExtent){
        landingController.isVisibleFooter.value=false;
      }else if(scrollController.position.pixels == scrollController.position.maxScrollExtent){
        landingController.isVisibleFooter.value=false;
      }
    });
  }

  void initTransactionList()
  {
    //Using cascading to execute same operation on same object.
    userTransactionList.value..add({
      "name":"Bitcoin",
      "bitcoinValue":"-0.305338TC",
      "date":"1 April 2022",
      "status":"Sent"
    })..add({
      "name":"Ruble",
      "bitcoinValue":"+4.305338TC",
      "date":"31 March 2022",
      "status":"Received"
    })..add({
      "name":"Ethereum",
      "bitcoinValue":"-0.305338TC",
      "date":"2 April 2022",
      "status":"Received"
    })..add({
      "name":"Ripley",
      "bitcoinValue":"+0.305338TC",
      "date":"1 April 2022",
      "status":"sent"
    })..add({
      "name":"Ripley",
      "bitcoinValue":"+0.305338TC",
      "date":"1 April 2022",
      "status":"sent"
    })..add({
      "name":"Ripley",
      "bitcoinValue":"+0.305338TC",
      "date":"1 April 2022",
      "status":"sent"
    })..add({
      "name":"Ripley",
      "bitcoinValue":"+0.305338TC",
      "date":"1 April 2022",
      "status":"sent"
    });
  }

}
