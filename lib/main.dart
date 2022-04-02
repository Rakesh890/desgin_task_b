//import 'package:desgin_task_b/app/modules/landing_module/landing_bindings.dart';
import 'package:desgin_task_b/app/modules/landing_module/landing_bindings.dart';
import 'package:desgin_task_b/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/modules/home_module/home_bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // initialBinding: LandingBinding(),
      initialRoute: Routes.LANDING,
      getPages: AppPages.pages,
    );
  }
}