import 'package:admin_dukar/Page/section/form_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Widgets/button_widgets.dart';
import '../../Widgets/text_widget.dart';
import '../../style/app_Colors.dart';
import '../Dashboard/dashboard_controller.dart';
import '../Orders/orders_components.dart';
import '../section/appsection.dart';

class RiderPage {
  final controller = Get.find<DashboardController>();
  RxBool showForm=false.obs;

  Widget body(){
    return Column(
      children: [
        Obx(() => Visibility(
            visible: showForm.isTrue,
            child: FormLayout().dashboardCategory("New Rider"))),
        InkWell(
          child: Align(
            alignment: Alignment.centerRight,
            child: button_widgets(
              color: AppColors().lightColorNo,
              height: 60,
              width: 150,
              radius: 10,
              borderColor: 0xffFF9C27B0,
              fun: (){

              },
              widget: Center(
                  child: text_widget(
                    color: AppColors().whiteColorNo,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.center,
                    font: "Lato",
                    fontSize: 15,
                    text: "Register Rider",
                  )
              ),
            ),
          ),
          onTap: (){
            showForm.toggle();
          },
        ),
        const SizedBox(height: 30,),
        AppSection().filterSection("Rider summary"),
        const SizedBox(height: 30,),
        OrdersComponents().allDetails([
          "Rider name",
          "Rider number",
          "Rider ID",
          "Rider image",
          "Rider no.plate",
          "Action"
        ], (id) {
          controller.removeLocation(id,"riders");
        },"riders","riderName",50)
      ],
    );
  }


}