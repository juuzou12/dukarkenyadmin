import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'dashboard_components.dart';
import 'dashboard_controller.dart';

class DashboardPage extends GetView<DashboardController>{
  final comp=DashboardComponet();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: comp.body(),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: comp.navigator(),
      ),
    );
  }

}