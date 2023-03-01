import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../style/app_Colors.dart';
import 'login_components.dart';
import 'login_controller.dart';

class LoginPage extends GetView<LoginController>{
  final comp=LoginComponents();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(AppColors().fadedLightColorNo),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            comp.placeHolder(AppColors().fadedLightColorNo, comp.leftComponent(),"left"),
            comp.placeHolder(AppColors().whiteColorNo, Obx(() => AnimatedContainer(
                duration: const Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
                ),
                height: controller.wholeFormH.value,
                onEnd: (){
                  controller.showForm.toggle();
                  if(controller.showForm.isTrue){
                    Future.delayed(const Duration(milliseconds: 600)).then((value) => controller.formH.value=60);
                  }

                },
                child: comp.formComponent())),"right"),
          ],
        ),
      ),
    );
  }

}