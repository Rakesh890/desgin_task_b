import 'package:desgin_task_b/app/layout/customappbar.dart';
import 'package:desgin_task_b/app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:desgin_task_b/app/modules/profile_module/profile_controller.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class ProfilePage extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appPrimaryColor,
      body: SafeArea(
        child: Center(
          child: Text("Profile Section",style: TextStyle(
            color: Colors.white,
            fontSize: 22
          ),),
        ),
      ),
    );
  }
}
