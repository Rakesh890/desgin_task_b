import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:desgin_task_b/app/modules/wallet_module/wallet_controller.dart';

import '../../layout/customappbar.dart';
import '../../theme/app_colors.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class WalletPage extends GetView<WalletController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appPrimaryColor,
      body: SafeArea(
        child: Center(
          child: Text("Wallet",style: TextStyle(
              color: Colors.white,
              fontSize: 22
          ),),
        ),
      ),
    );
  }
}
