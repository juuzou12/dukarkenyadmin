import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../Widgets/text_widget.dart';
import '../../style/app_Colors.dart';
import 'login_components.dart';
import 'login_controller.dart';

class LoginPage extends GetView<LoginController>{
  final comp=LoginComponents();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(AppColors().fadedLightColorNo),
      body: SingleChildScrollView(

        child: Padding(
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
                  child: Column(
                    children: [
                      comp.formComponent(),
                      Obx(() => Visibility(
                        visible: controller.errorValue.value!="",
                        child: Container(
                          width: Get.width,
                          decoration: BoxDecoration(
                              color: Colors.amber.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(Icons.warning_amber_rounded,size: 20,color: Colors.amber,),
                                  ),
                                  Expanded(
                                    child: text_widget(
                                      color: AppColors().darkColorNo,
                                      fontWeight: FontWeight.w400,
                                      textAlign: TextAlign.center,
                                      font: "Lato",
                                      fontSize: 12,
                                      text: controller.errorValue.value,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )),
                    ],
                  ))),"right"),
            ],
          ),
        ),
      ),
    );
  }

}