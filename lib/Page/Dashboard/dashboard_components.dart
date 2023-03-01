import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/dms_strings.dart';
import '../../Widgets/text_widget.dart';
import '../../style/app_Colors.dart';
import 'dashboard_controller.dart';
import 'section/appsection.dart';
import 'section/nav_hover_place.dart';

class DashboardComponet {
  final controller = Get.find<DashboardController>();

  Widget placeHolderD(String tag, Widget widget) {
    return Container(
      height: Get.height,
      color: Color(AppColors().whiteColorNo),
      child: widget,
    );
  }

  //navigator
  Widget navigator() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MouseRegion(
        onEnter: (v) {
          controller.navWidth.value = 80;
        },
        onExit: (v) {
          controller.navWidth.value = 50;
          controller.hideNav.value = "";
        },
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: Obx(()=>AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                    width: controller.navWidth.value,
                    height: 90,
                    child: InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Image.asset(
                            "assets/images/shoppy_icon.jpg",
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                      onTap: (){
                        Get.back();
                      },
                    ),
                  )),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: DsmString.menu
                        .map(
                          (e) => NavHoverPlace(controller: controller,e: e,),
                        )
                        .toList(),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: text_widget(
                    color: AppColors().greyLightColorNo,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.center,
                    font: "Laila",
                    fontSize: 10,
                    text: "Version: 23.34.5.6.5",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //body
  Widget body() {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: ListView(
        children: [
          AppSection().appBar(),
          const SizedBox(height: 20,),
          Obx(() => AppSection().secondSection()),
        ],
      ),
    );
  }
}


