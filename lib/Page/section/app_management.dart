import 'dart:math';

import 'package:admin_dukar/Page/section/form_layout.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

import '../../../Widgets/text_widget.dart';
import '../../../style/app_Colors.dart';
import '../Orders/orders_components.dart';

class AppManagement{
  RxString valueTitle="Dashboard category".obs;
  RxString formTitle="".obs;
  final _formKey = GlobalKey<FormBuilderState>();
  final c=Get.find<FormLayout>();
  Widget body(){
    return Column(
      children: [
        Obx(() => FormLayout().dashboardCategory(formTitle.value)),
        const SizedBox(height: 20,),
        topSection([
          "New dashboard category"
        ]),
        topSection([
          "New product category","New product sizes","New Brand"
        ]),
        topSection([
          "New product type","New product fabric"
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
      children: l.map((e) => Obx(() => Expanded(
        child: InkWell(
          child: Padding(
            padding: const EdgeInsets.only(right: 10.0,bottom: 20.0),
            child: AnimatedContainer(duration: const Duration(seconds: 1),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: formTitle.value==e?Color(AppColors().lightColorNo):Color(AppColors().fadedLightColorNo)
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Align(
                  alignment: Alignment.center,
                  child: text_widget(
                    color: formTitle.value==e?AppColors().whiteColorNo:AppColors().darkColorNo,
                    fontWeight: FontWeight.w500,
                    textAlign: TextAlign.center,
                    font: "Laila",
                    fontSize: 14,
                    text: formTitle.value==e?"Cancel":e,
                  ),
                ),
              ),
            ),
          ),
          onTap: (){
            if(formTitle.value==e){
              print("object is same");
              // onTapTrigger(c.categoryString.value,_formKey);
              formTitle.value="";
              return;
            }
            formTitle.value=e;
          },
        ),
      ))).toList(),
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
          print(id);
          removeLocation(id,"categories");
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
          removeLocation(id,"shoppyDashboard");
        },"shoppyDashboard","position");
      case "Product type":
        return OrdersComponents().allDetails([
          "Name",
          "Primary Key",
          "Image",
          "Type ID",
          "Action"
        ], (id) {
          removeLocation(id,"productType");
        },"productType","name");
        case "Product sizes":
        return OrdersComponents().allDetails([
          "Name",
          "Primary Key",
          "Action"
        ], (id) {
          removeLocation(id,"sizes");
        },"sizes","name");
        case "Product fabric":
        return OrdersComponents().allDetails([
          "Name",
          "Primary Key",
          "Action"
        ], (id) {
          removeLocation(id,"productFabric");
        },"productFabric","name");
        case "Our Brands":
        return OrdersComponents().allDetails([
          "Name",
          "Image",
          "Action"
        ], (id) {
          removeLocation(id,"brands");
        },"brands","name");
    }
    return SizedBox();
  }

  void removeLocation(String id,String collectionPath){
    FirebaseFirestore.instance.collection(collectionPath)
        .doc(id)
        .delete()
        .then((value) => null)
        .onError((error, stackTrace) => null);
  }


}