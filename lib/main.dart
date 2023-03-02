import 'package:admin_dukar/Page/Dashboard/dashboard_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart' as firebase_core;

import 'Controller/auth_controller.dart';
import 'Page/Dashboard/dashboard_controller.dart';
import 'Page/LoginPage/login_controller.dart';
import 'Page/LoginPage/login_page.dart';
import 'Page/section/form_layout.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

    options: DefaultFirebaseOptions.currentPlatform,

  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.portraitDown,
    //   DeviceOrientation.portraitUp,
    // ]);
    Get.put(LoginController());
    Get.put(FormLayout());
    Get.put(DashboardController());
    Get.put(AuthController());
    return GetMaterialApp(
      title: 'Dukar Admin',
      debugShowCheckedModeBanner: false,
      home: DashboardPage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

