import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Widgets/text_widget.dart';
import '../../../style/app_Colors.dart';
import '../dashboard_controller.dart';

class NavHoverPlace extends StatelessWidget {
  final e;
  const NavHoverPlace({
    super.key,
    required this.controller, this.e,
  });

  final DashboardController controller;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
      onEnd: (){
        controller.showNav.toggle();
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: MouseRegion(
          onEnter: (v) {
            controller.navWidth.value = 180;
            controller.hideNav.value = e['name'];
          },
          onExit: (v) {
            // controller.navWidth.value = 80;
            // controller.hideNav.value = "";
          },
          onHover: (v) {

          },
          child: InkWell(
            child: Obx(() => CircleAvatar(
              backgroundColor: controller.hideNav.value ==
                  e['name']?Color(AppColors().lightColorNo):Colors.transparent,
              radius: 15,
              child: Icon(
                e['icon'],
                size: 20,
                color:  controller.hideNav.value ==
                    e['name']?Color(AppColors().whiteColorNo):AppColors().iconColor,
              ),
            )),
            onTap: (){
              controller.navValue.value=e['name'];
              controller.hideNav.value = e['name'];
            },
          ),
        ),
      ),
    );
  }
}