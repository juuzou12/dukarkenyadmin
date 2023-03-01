import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'Page/Dashboard/dashboard_controller.dart';
import 'Page/LoginPage/login_controller.dart';
import 'Page/LoginPage/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    Get.put(LoginController());
    Get.put(DashboardController());
    return GetMaterialApp(
      title: 'Dukar Admin',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

