import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Widgets/text_widget.dart';
import '../../../style/app_Colors.dart';
import '../Orders/orders_components.dart';

class AppManagement{
  RxString valueTitle="Dashboard category".obs;
  Widget body(){
    return Column(
      children: [
        const SizedBox(height: 20,),
        topSection([
          "New dashboard category"
        ]),
        topSection([
          "New product category","Manage product category","New Brand"
        ]),
        topSection([
          "New product sizes","Manage product sizes","New product fabric","Manage product fabric",
        ]),
        topSection([
        "New product type","Manage product type",
        ]),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "Dashboard category","Our Brands","Product category","Product type","Product sizes","Product fabric"
            ].map((e) => InkWell(
              child: Obx(() => Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: valueTitle.value==e?Color(AppColors().darkColorNo):Colors.transparent
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: text_widget(
                      color: valueTitle.value==e?AppColors().whiteColorNo:AppColors().darkColorNo,
                      fontWeight: FontWeight.w500,
                      textAlign: TextAlign.start,
                      font: "Laila",
                      fontSize: 14,
                      text: "$e",
                    ),
                  ),
                ),
              )),
              onTap: (){
                valueTitle.value=e;
              },
            )).toList(),
          ),
        ),
        const SizedBox(height: 10,),
        Obx(() => switchLayout())

      ],
    );
  }

  Widget topSection(List l){
    return Row(
      children: l.map((e) => Expanded(
        child: Padding(
          padding: const EdgeInsets.only(right: 10.0,bottom: 20.0),
          child: AnimatedContainer(duration: const Duration(seconds: 1),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(AppColors().fadedLightColorNo)
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.center,
                child: text_widget(
                  color: AppColors().darkColorNo,
                  fontWeight: FontWeight.w500,
                  textAlign: TextAlign.center,
                  font: "Laila",
                  fontSize: 14,
                  text: e,
                ),
              ),
            ),
          ),
        ),
      )).toList(),
    );
  }

  Widget switchLayout(){
    switch (valueTitle.value){
      case "Product category":
        return OrdersComponents().allDetails([
          "Name",
          "No",
          "Image",
          "Category ID",
          "Action"
        ], (id) {
          // removeLocation(id);
        },"categories","name");
      case "Dashboard category":
        return OrdersComponents().allDetails([
          "Title",
          "Position",
          "Value",
          "Condition",
          "Show",
          "Action"
        ], (id) {
          // removeLocation(id);
        },"shoppyDashboard","position");
      case "Product type":
        return OrdersComponents().allDetails([
          "Name",
          "Primary Key",
          "Image",
          "Type ID",
          "Action"
        ], (id) {
          // removeLocation(id);
        },"productType","name");
        case "Product sizes":
        return OrdersComponents().allDetails([
          "Name",
          "Primary Key",
          "Action"
        ], (id) {
          // removeLocation(id);
        },"sizes","name");
        case "Product fabric":
        return OrdersComponents().allDetails([
          "Name",
          "Primary Key",
          "Action"
        ], (id) {
          // removeLocation(id);
        },"productFabric","name");
        case "Our Brands":
        return OrdersComponents().allDetails([
          "Name",
          "Image",
          "Action"
        ], (id) {
          // removeLocation(id);
        },"brands","name");
    }
    return SizedBox();
  }

  void onTapTrigger(String v){
    switch(v){
      case "New dashboard category":
        break;
    }
  }
}