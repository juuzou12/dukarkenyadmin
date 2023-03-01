import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../style/app_Colors.dart';
import '../Dashboard/dashboard_components.dart';
import 'view_components.dart';
import 'view_page_controller.dart';

class ViewPage extends GetView<ViewPageController>{
  final comp=DashboardComponet();
  final viewComp=ViewComponent();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F1F1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Color(AppColors().darkColorNo)
        ),
      ),
      // bottomNavigationBar: SizedBox(
      //     height: 70,
      //     child: comp.placeHolderD("left",comp.navigator())),
      body: Row(
        children: [
          viewComp.vendorDetails(),
          Expanded(child: viewComp.leftSection()),
        ],
      ),
    );
  }

}