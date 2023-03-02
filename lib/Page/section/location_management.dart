import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

import '../../../Constants/dms_strings.dart';
import '../../../Widgets/button_widgets.dart';
import '../../../Widgets/formbuildtextfield.dart';
import '../../../Widgets/text_widget.dart';
import '../../../style/app_Colors.dart';
import '../Dashboard/dashboard_controller.dart';
import '../Orders/orders_components.dart';

class LocationManagement{
  final controller = Get.find<DashboardController>();

  Widget body(){
    return Column(
      children: [
        Obx(() => Visibility(
          visible: controller.showLocationForm.isFalse,
          child: Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              child: AnimatedContainer(duration: const Duration(seconds: 1),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(AppColors().fadedLightColorNo)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Obx(()=>text_widget(
                      color: AppColors().darkColorNo,
                      fontWeight: FontWeight.w500,
                      textAlign: TextAlign.center,
                      font: "Laila",
                      fontSize: 14,
                      text: controller.showLocationForm.isFalse?"New location":"Cancel",
                    )),
                  ),
                ),
              ),
              onTap: (){
                controller.showLocationForm.toggle();
              },
            ),
          ),
        )),
        Obx(() => Visibility(
            visible: controller.showLocationForm.isTrue,
            child: topSection([]))),
        const SizedBox(height: 30,),
        OrdersComponents().allDetails([
          "Country name",
          "County name",
          "Sub-county",
          "Location name",
          "Action"
        ], (id) {
          removeLocation(id);
        },"locations","locations")
      ],
    );
  }
  final _formKey = GlobalKey<FormBuilderState>();

  Widget topSection(List l) {
    return FormBuilder(
      key: _formKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  child: Column(
                    children: [
                      formbuildtextfield(
                          height: 50,
                          color: 0xff1F1C34,
                          hintText: DsmString.country,
                          attribute: "country",
                          dividerColor: 0xff1F1C34,
                          errorText: "Enter ${DsmString.country}",
                          font: "Lato",
                          keybordType: TextInputType.emailAddress,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0,
                          formType: "text",
                          dropDownList: [],
                          submitAction: () {}),
                      const SizedBox(height: 20,),
                      formbuildtextfield(
                          height: 50,
                          color: 0xff1F1C34,
                          hintText: DsmString.county,
                          attribute: "county",
                          dividerColor: 0xff1F1C34,
                          errorText: "Enter ${DsmString.county}",
                          font: "Lato",
                          keybordType: TextInputType.emailAddress,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0,
                          formType: "text",
                          dropDownList: [],
                          submitAction: () {}),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 20,),
              Expanded(
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  child: Column(
                    children: [
                      formbuildtextfield(
                          height: 50,
                          color: 0xff1F1C34,
                          hintText: DsmString.subcounty,
                          attribute: "subcounty",
                          dividerColor: 0xff1F1C34,
                          errorText: "Enter ${DsmString.subcounty}",
                          font: "Lato",
                          keybordType: TextInputType.emailAddress,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0,
                          formType: "text",
                          dropDownList: [],
                          submitAction: () {}),
                      const SizedBox(height: 20,),
                      formbuildtextfield(
                          height: 50,
                          color: 0xff1F1C34,
                          hintText: DsmString.location,
                          attribute: "location",
                          dividerColor: 0xff1F1C34,
                          errorText: "Enter ${DsmString.location}",
                          font: "Lato",
                          keybordType: TextInputType.emailAddress,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0,
                          formType: "text",
                          dropDownList: [],
                          submitAction: () {}),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Obx(() => Visibility(
            visible: controller.isLoadingNet.isFalse,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    child: AnimatedContainer(duration: const Duration(seconds: 1),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(AppColors().fadedLightColorNo)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Obx(()=>text_widget(
                            color: AppColors().darkColorNo,
                            fontWeight: FontWeight.w500,
                            textAlign: TextAlign.center,
                            font: "Laila",
                            fontSize: 14,
                            text: controller.showLocationForm.isFalse?"New location":"Cancel",
                          )),
                        ),
                      ),
                    ),
                    onTap: (){
                      controller.showLocationForm.toggle();
                    },
                  ),
                ),
                const SizedBox(width: 20,),
                InkWell(
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
                          text: "Add location",
                        )
                    ),
                  ),
                  onTap: (){
                    if(_formKey.currentState!.saveAndValidate()){
                      controller.isLoadingNet.toggle();
                      updateLocation(
                          _formKey.currentState!.value['country'],
                          _formKey.currentState!.value['county'],
                          _formKey.currentState!.value['subcounty'],
                          _formKey.currentState!.value['location'], () {
                        _formKey.currentState!.reset();
                      });
                    }
                  },
                ),
              ],
            ),
          )),
          Obx(() => Visibility(
            visible: controller.isLoadingNet.isTrue,
            child:CircularProgressIndicator(
              color: AppColors().lightColor,
              backgroundColor: AppColors().fadedLightColor,
            ),
          )),
        ],
      ),
    );
  }

  static var chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  static var char = 'DdUuKkAaRr1234567890';
  static Random rnd = Random();

  static String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => chars.codeUnitAt(rnd.nextInt(chars.length))));


  void updateLocation(String? country,String? county,String? subCountyName,String? locations,fun)async{
    String locationID=getRandomString(15);
    Map<String,dynamic>data={
      "country": country,
      "county": county,
      "subCountyName": subCountyName,
      "locations":  locations,
      "locationID":locationID,
    };
    FirebaseFirestore.instance.collection("locations")
        .doc(locationID)
        .set(data)
        .then((value) => {fun(),controller.isLoadingNet.toggle()})
        .onError((error, stackTrace) => {Get.snackbar("Add Location", "$error"),controller.isLoadingNet.toggle()});
  }

  void removeLocation(String id){
    FirebaseFirestore.instance.collection("locations")
        .doc(id)
        .delete()
        .then((value) => null)
        .onError((error, stackTrace) => null);
  }

}