import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../Widgets/button_widgets.dart';
import '../../Widgets/formbuildtextfield.dart';
import '../../Widgets/text_widget.dart';
import '../../models/upload_list.dart';
import '../../style/app_Colors.dart';

class FormLayout {

  RxString categoryString = "".obs;
  RxString valueString = "".obs;
  RxBool onOfferValue = false.obs;
  final _formKey = GlobalKey<FormBuilderState>();


  //dashboard category
  Widget dashboardCategory(String value){
    switch(value){
      case "New dashboard category":
        return FormBuilder(
            key: _formKey,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: text_widget(
                    color: AppColors().greyLightColorNo,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.start,
                    font: "Lato",
                    fontSize: 13,
                    text:
                        "Title must contain......wear/vendor/limited/special offer/previously bought by/type/collections/delivery charges/"
                        "vendor/recommended vendors/our premium vendors/our vendors",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: formbuildtextfield(
                          height: 50,
                          color: 0xff1F1C34,
                          hintText: "Dashboard position",
                          attribute: "position",
                          dividerColor: 0xff1F1C34,
                          errorText: "Enter dashboard position first",
                          font: "Poppins",
                          keybordType: TextInputType.number,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0,
                          formType: "text",
                          dropDownList: [],
                          submitAction: () {}),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: formbuildtextfield(
                          height: 50,
                          color: 0xff1F1C34,
                          hintText: "Dashboard title",
                          attribute: "title",
                          dividerColor: 0xff1F1C34,
                          errorText: "Enter dashboard title first",
                          font: "Poppins",
                          keybordType: TextInputType.text,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0,
                          formType: "text",
                          dropDownList: [],
                          submitAction: () {}),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Obx(() => formBuilderDropDownUI(
                          'condition',
                          "Pick condition",
                          [
                            'category',
                            'type',
                            "onOffer",
                            "quantity",
                            "brand",
                            "new",
                            "businessRating",
                            "packagePlan",
                            "collectionType",
                            "portrait",
                            "landscape","none"
                          ],
                          valueString.value)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Obx(() => Visibility(
                      visible: valueString.value == "quantity",
                      child: formbuildtextfield(
                          height: 50,
                          color: 0xff1F1C34,
                          hintText: "Enter $valueString value",
                          attribute: "quantity",
                          dividerColor: 0xff1F1C34,
                          errorText: "Enter a dashboard title first",
                          font: "Poppins",
                          keybordType: TextInputType.number,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0,
                          formType: "text",
                          dropDownList: [],
                          submitAction: () {}),
                    )),
                Obx(() => Visibility(
                      visible: valueString.value == "businessRating",
                      child: formbuildtextfield(
                          height: 50,
                          color: 0xff1F1C34,
                          hintText: "Enter $valueString value",
                          attribute: "quantity",
                          dividerColor: 0xff1F1C34,
                          errorText: "Enter a dashboard title first",
                          font: "Poppins",
                          keybordType: TextInputType.number,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0,
                          formType: "text",
                          dropDownList: [],
                          submitAction: () {}),
                    )),
                Obx(() => Visibility(
                    visible: valueString.value == "category",
                    child: formBuilderDropDownUIObj(
                        'value',
                        "Pick $valueString value",
                        UploadList.categories,
                        "name",
                        categoryString.value))),
                Obx(() => Visibility(
                    visible: valueString.value == "packagePlan",
                    child: formBuilderDropDownUIObj(
                        'value',
                        "Pick $valueString value",
                        [
                          {"name": "VIP Package"},
                          {"name": "Premium package"},
                          {"name": "Basic package"},
                          {"name": "Standard package"},
                        ],
                        "name",
                        categoryString.value))),
                Obx(() => Visibility(
                    visible: valueString.value == "collectionType",
                    child: formBuilderDropDownUIObj(
                        'value',
                        "Pick $valueString value",
                        [
                          {"name": "Random"},
                          {"name": "Brands"},
                          {"name": "Recently"},
                          {"name": "Best Seller"},
                        ],
                        "name",
                        categoryString.value))),
                Obx(() => Visibility(
                      visible: valueString.value == "type",
                      child: formBuilderDropDownUIObj(
                          'value',
                          "Pick $valueString value",
                          UploadList.productType,
                          "name",
                          categoryString.value),
                    )),
                Obx(() => Visibility(
                      visible: valueString.value == "brand",
                      child: formBuilderDropDownUIObj(
                          'value',
                          "Pick $valueString value",
                          UploadList.brands,
                          "name",
                          categoryString.value),
                    )),
                Obx(() => Visibility(
                    visible: valueString.value == "onOffer",
                    child: CupertinoSwitch(
                      value: onOfferValue.value,
                      onChanged: (v) {
                        onOfferValue.value = v;
                      },
                    ))),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: button_widgets(
                    color: AppColors().darkColorNo,
                    height: 50,
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
                          text: "Add category",
                        )
                    ),
                  ),
                  onTap: (){
                    onTapTrigger(value, _formKey);
                  },
                ),
              ],
            ));

      case "New product category":
        return FormBuilder(
          key: _formKey,
          child: Column(children: [
            formbuildtextfield(
                height: 50,
                color: 0xff1F1C34,
                hintText: "Enter category name",
                attribute: "category",
                dividerColor: 0xff1F1C34,
                errorText: "Enter dashboard position first",
                font: "Poppins",
                keybordType: TextInputType.text,
                fontWeight: FontWeight.w400,
                fontSize: 15.0,
                formType: "text",
                dropDownList: [],
                submitAction: () {}),
            const SizedBox(
              height: 16,
            ),
            formbuildtextfield(
                height: 50,
                color: 0xff1F1C34,
                hintText: "Enter primary key name (Caps)",
                attribute: "no",
                dividerColor: 0xff1F1C34,
                errorText: "Enter a dashboard title first",
                font: "Poppins",
                keybordType: TextInputType.text,
                fontWeight: FontWeight.w400,
                fontSize: 15.0,
                formType: "text",
                dropDownList: [],
                submitAction: () {}),
            const SizedBox(
              height: 16,
            ),
            formbuildtextfield(
                height: 50,
                color: 0xff1F1C34,
                hintText: "Paste category image url",
                attribute: "url",
                dividerColor: 0xff1F1C34,
                errorText: "Enter a dashboard title first",
                font: "Poppins",
                keybordType: TextInputType.text,
                fontWeight: FontWeight.w400,
                fontSize: 15.0,
                formType: "text",
                dropDownList: [],
                submitAction: () {}),
            const SizedBox(
              height: 16,
            ),
            InkWell(
              child: button_widgets(
                  color: AppColors().darkColorNo,
                  height: 60,
                  width: 150,
                  radius: 10,
                  borderColor: 0xffFF9C27B0,
                  widget: Center(
                    child: text_widget(
                      color: AppColors().whiteColorNo,
                      fontWeight: FontWeight.w500,
                      textAlign: TextAlign.center,
                      font: "Lato",
                      fontSize: 16,
                      text: "Add category",
                    ),
                  )),
              onTap: () {
                if (_formKey.currentState!.saveAndValidate()) {
                  updateCategory(
                      _formKey.currentState!.value['category'],
                      _formKey.currentState!.value['no'], () {
                    _formKey.currentState!.reset();
                  }, _formKey.currentState!.value['url']);
                }
              },
            ),
          ]),
        );

      case "New product sizes":
        return FormBuilder(
          key: _formKey,
          child: Column(children: [
            formbuildtextfield(
                height: 50,
                color: 0xff1F1C34,
                hintText: "Enter type name",
                attribute: "sizeName",
                dividerColor: 0xff1F1C34,
                errorText: "Enter dashboard position first",
                font: "Poppins",
                keybordType: TextInputType.text,
                fontWeight: FontWeight.w400,
                fontSize: 15.0,
                formType: "text",
                dropDownList: [],
                submitAction: () {}),
            const SizedBox(
              height: 16,
            ),
            formbuildtextfield(
                height: 50,
                color: 0xff1F1C34,
                hintText: "Enter primary key name (Caps)",
                attribute: "primaryKey",
                dividerColor: 0xff1F1C34,
                errorText: "Enter a dashboard title first",
                font: "Poppins",
                keybordType: TextInputType.text,
                fontWeight: FontWeight.w400,
                fontSize: 15.0,
                formType: "text",
                dropDownList: [],
                submitAction: () {}),
            const SizedBox(
              height: 16,
            ),
            formBuilderDropDownUI2("c", "Pick related products",
                UploadList.productType, "no", "name","primaryKey"),
            const SizedBox(
              height: 16,
            ),
            InkWell(
              child: button_widgets(
                  color: AppColors().darkColorNo,
                  height: 60,
                  width: 150,
                  radius: 10,
                  borderColor: 0xffFF9C27B0,
                  widget: Center(
                    child: text_widget(
                      color: AppColors().whiteColorNo,
                      fontWeight: FontWeight.w500,
                      textAlign: TextAlign.center,
                      font: "Lato",
                      fontSize: 16,
                      text: "Add category",
                    ),
                  )),
              onTap: () {
                onTapTrigger(value, _formKey);
              },
            ),
          ]),
        );

      case "New product fabric":
        return FormBuilder(
          key: _formKey,
          child: Column(children: [
            formbuildtextfield(
                height: 50,
                color: 0xff1F1C34,
                hintText: "Enter type name",
                attribute: "productFabricName",
                dividerColor: 0xff1F1C34,
                errorText: "Enter dashboard position first",
                font: "Poppins",
                keybordType: TextInputType.text,
                fontWeight: FontWeight.w400,
                fontSize: 15.0,
                formType: "text",
                dropDownList: [],
                submitAction: () {}),
            const SizedBox(
              height: 16,
            ),
            formbuildtextfield(
                height: 50,
                color: 0xff1F1C34,
                hintText: "Enter primary key name (Caps)",
                attribute: "productFabricPrimaryKey",
                dividerColor: 0xff1F1C34,
                errorText: "Enter a dashboard title first",
                font: "Poppins",
                keybordType: TextInputType.text,
                fontWeight: FontWeight.w400,
                fontSize: 15.0,
                formType: "text",
                dropDownList: [],
                submitAction: () {}),
            const SizedBox(
              height: 16,
            ),
            formBuilderDropDownUI2("key", "Pick related products",
                UploadList.categories, "no", "name","no"),
            const SizedBox(
              height: 16,
            ),
            InkWell(
              child: button_widgets(
                  color: AppColors().darkColorNo,
                  height: 60,
                  width: 150,
                  radius: 10,
                  borderColor: 0xffFF9C27B0,
                  widget: Center(
                    child: text_widget(
                      color: AppColors().whiteColorNo,
                      fontWeight: FontWeight.w500,
                      textAlign: TextAlign.center,
                      font: "Lato",
                      fontSize: 16,
                      text: "Add category",
                    ),
                  )),
              onTap: () {
                onTapTrigger(value, _formKey);
              },
            ),
          ]),
        );

      case "New product type":
        return FormBuilder(
          key: _formKey,
          child: Column(children: [
            formbuildtextfield(
                height: 50,
                color: 0xff1F1C34,
                hintText: "Enter type name",
                attribute: "productTypeName",
                dividerColor: 0xff1F1C34,
                errorText: "Enter dashboard position first",
                font: "Poppins",
                keybordType: TextInputType.text,
                fontWeight: FontWeight.w400,
                fontSize: 15.0,
                formType: "text",
                dropDownList: [],
                submitAction: () {}),
            const SizedBox(
              height: 16,
            ),
            formbuildtextfield(
                height: 50,
                color: 0xff1F1C34,
                hintText: "Enter $value key id (Caps)",
                attribute: "productTypeID",
                dividerColor: 0xff1F1C34,
                errorText: "Enter a dashboard title first",
                font: "Poppins",
                keybordType: TextInputType.text,
                fontWeight: FontWeight.w400,
                fontSize: 15.0,
                formType: "text",
                dropDownList: [],
                submitAction: () {}),
            const SizedBox(
              height: 16,
            ),
            formBuilderDropDownUI2("productTypePrimaryKey", "Pick related products",
                UploadList.categories, "no", "name","no"),
            const SizedBox(
              height: 16,
            ),
            formbuildtextfield(
                height: 50,
                color: 0xff1F1C34,
                hintText: "Paste category image url",
                attribute: "url",
                dividerColor: 0xff1F1C34,
                errorText: "Enter a dashboard title first",
                font: "Poppins",
                keybordType: TextInputType.text,
                fontWeight: FontWeight.w400,
                fontSize: 15.0,
                formType: "text",
                dropDownList: [],
                submitAction: () {}),
            const SizedBox(
              height: 16,
            ),
            InkWell(
              child: button_widgets(
                  color: AppColors().darkColorNo,
                  height: 60,
                  width: 150,
                  radius: 10,
                  borderColor: 0xffFF9C27B0,
                  widget: Center(
                    child: text_widget(
                      color: AppColors().whiteColorNo,
                      fontWeight: FontWeight.w500,
                      textAlign: TextAlign.center,
                      font: "Lato",
                      fontSize: 16,
                      text: "Add category",
                    ),
                  )),
              onTap: () {
                if (_formKey.currentState!.saveAndValidate()) {}
              },
            ),
          ]),
        );

      case "New Brand":
        return FormBuilder(
          key: _formKey,
          child: Column(children: [
            formbuildtextfield(
                height: 50,
                color: 0xff1F1C34,
                hintText: "Enter category name",
                attribute: "brandName",
                dividerColor: 0xff1F1C34,
                errorText: "Enter dashboard position first",
                font: "Poppins",
                keybordType: TextInputType.text,
                fontWeight: FontWeight.w400,
                fontSize: 15.0,
                formType: "text",
                dropDownList: [],
                submitAction: () {}),

            const SizedBox(
              height: 16,
            ),
            formbuildtextfield(
                height: 50,
                color: 0xff1F1C34,
                hintText: "Paste category image url",
                attribute: "urlBrandImg",
                dividerColor: 0xff1F1C34,
                errorText: "Enter a dashboard title first",
                font: "Poppins",
                keybordType: TextInputType.text,
                fontWeight: FontWeight.w400,
                fontSize: 15.0,
                formType: "text",
                dropDownList: [],
                submitAction: () {}),
            const SizedBox(
              height: 16,
            ),
            InkWell(
              child: button_widgets(
                  color: AppColors().darkColorNo,
                  height: 60,
                  width: 150,
                  radius: 10,
                  borderColor: 0xffFF9C27B0,
                  widget: Center(
                    child: text_widget(
                      color: AppColors().whiteColorNo,
                      fontWeight: FontWeight.w500,
                      textAlign: TextAlign.center,
                      font: "Lato",
                      fontSize: 16,
                      text: "Add Brand",
                    ),
                  )),
              onTap: () {
                if (_formKey.currentState!.saveAndValidate()) {
                  onTapTrigger(value, _formKey);
                }
              },
            ),
          ]),
        );

      case "New Rider":
        return FormBuilder(
          key: _formKey,
            child: Column(
              children: [
                formbuildtextfield(
                    height: 50,
                    color: 0xff1F1C34,
                    hintText: "Enter rider email",
                    attribute: "riderEmail",
                    dividerColor: 0xff1F1C34,
                    errorText: "Enter rider email first",
                    font: "Poppins",
                    keybordType: TextInputType.emailAddress,
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0,
                    formType: "text",
                    dropDownList: [],
                    submitAction: () {}),

                const SizedBox(
                  height: 16,
                ),
                formbuildtextfield(
                    height: 50,
                    color: 0xff1F1C34,
                    hintText: "Enter rider phone number",
                    attribute: "riderPhoneNo",
                    dividerColor: 0xff1F1C34,
                    errorText: "Enter rider phone number first",
                    font: "Poppins",
                    keybordType: TextInputType.number,
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0,
                    formType: "text",
                    dropDownList: [],
                    submitAction: () {}),

                const SizedBox(
                  height: 16,
                ),
                formbuildtextfield(
                    height: 50,
                    color: 0xff1F1C34,
                    hintText: "Enter rider full name",
                    attribute: "riderFullname",
                    dividerColor: 0xff1F1C34,
                    errorText: "Enter rider full name first",
                    font: "Poppins",
                    keybordType: TextInputType.text,
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0,
                    formType: "text",
                    dropDownList: [],
                    submitAction: () {}),

                const SizedBox(
                  height: 16,
                ),
                formbuildtextfield(
                    height: 50,
                    color: 0xff1F1C34,
                    hintText: "Enter rider number plate",
                    attribute: "riderPlateNo",
                    dividerColor: 0xff1F1C34,
                    errorText: "Enter rider number plate first",
                    font: "Poppins",
                    keybordType: TextInputType.text,
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0,
                    formType: "text",
                    dropDownList: [],
                    submitAction: () {}),

                const SizedBox(
                  height: 16,
                ),

                formbuildtextfield(
                    height: 50,
                    color: 0xff1F1C34,
                    hintText: "Enter rider Id number",
                    attribute: "riderPlateNo",
                    dividerColor: 0xff1F1C34,
                    errorText: "Enter rider id number first",
                    font: "Poppins",
                    keybordType: TextInputType.number,
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0,
                    formType: "text",
                    dropDownList: [],
                    submitAction: () {}),

                const SizedBox(
                  height: 16,
                ),

              ],
            )
        );
    }
    return SizedBox();
  }


   Widget formBuilderDropDownUI(
      String name, String hintValue, List mapList, String valueStrings) {
    AppColors colors = AppColors();
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Color(AppColors().greyLightColorNo).withOpacity(0.4))),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: name != "color"
            ? FormBuilderDropdown(
          name: name,
          decoration: const InputDecoration(
            border: InputBorder.none,
          ),
          // initialValue: 'Male',
          hint: text_widget(
            color: colors.greyLightColorNo,
            fontWeight: FontWeight.w400,
            textAlign: TextAlign.center,
            font: "Lato",
            fontSize: 16,
            text: hintValue,
          ),
          items: mapList
              .map((value) => DropdownMenuItem(
            value: value,
            onTap: () {
              valueString.value = value;
            },
            child: text_widget(
              color: colors.darkColorNo,
              fontWeight: FontWeight.w400,
              textAlign: TextAlign.center,
              font: "Lato",
              fontSize: 16,
              text: "$value",
            ),
          ))
              .toList(),
        )
            : FormBuilderDropdown(
          name: name,
          decoration: const InputDecoration(
            border: InputBorder.none,
          ),
          // initialValue: 'Male',
          hint: text_widget(
            color: colors.greyLightColorNo,
            fontWeight: FontWeight.w400,
            textAlign: TextAlign.center,
            font: "Lato",
            fontSize: 16,
            text: hintValue,
          ),
          items: mapList
              .map((value) => DropdownMenuItem(
            value: value,
            child: Icon(
              Icons.circle,
              size: 30,
              color: Color(int.parse(value)),
            ),
            onTap: () {
              valueString.value = value;
            },
          ))
              .toList(),
        ),
      ),
    );
  }


   Widget formBuilderDropDownUIObj(String name, String hintValue,
      List mapList, String keyValue, String holderValue) {
    AppColors colors = AppColors();
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Color(AppColors().greyLightColorNo).withOpacity(0.4))),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: FormBuilderDropdown(
          name: name,
          decoration: const InputDecoration(
            border: InputBorder.none,
          ),
          // initialValue: 'Male',
          hint: text_widget(
            color: colors.greyLightColorNo,
            fontWeight: FontWeight.w400,
            textAlign: TextAlign.center,
            font: "Lato",
            fontSize: 16,
            text: hintValue,
          ),
          items: mapList
              .map((value) => DropdownMenuItem(
            value: value,
            onTap: () {
              categoryString.value = value[keyValue];
              print(value[keyValue]);
              print(holderValue);
            },
            child: text_widget(
              color: colors.darkColorNo,
              fontWeight: FontWeight.w400,
              textAlign: TextAlign.center,
              font: "Lato",
              fontSize: 16,
              text: "${value[keyValue]}",
            ),
          ))
              .toList(),
        ),
      ),
    );
  }

   Widget formBuilderDropDownUI2(String name, String hintValue,
      List mapList, String value, String displayValue,String t) {
    AppColors colors = AppColors();
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Color(AppColors().greyLightColorNo).withOpacity(0.4))),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: name != "color"
            ? FormBuilderDropdown(
          name: name,
          decoration: const InputDecoration(
            border: InputBorder.none,
          ),
          // initialValue: 'Male',
          hint: text_widget(
            color: colors.fadedLightColorNo,
            fontWeight: FontWeight.w400,
            textAlign: TextAlign.center,
            font: "Lato",
            fontSize: 16,
            text: hintValue,
          ),
          items: mapList
              .map((value) => DropdownMenuItem(
            value: "${value}",
            onTap: () {},
            child: text_widget(
              color: colors.darkColorNo,
              fontWeight: FontWeight.w400,
              textAlign: TextAlign.center,
              font: "Lato",
              fontSize: 16,
              text: "${value[displayValue]}",
            ),
          ))
              .toList(),
        )
            : FormBuilderDropdown(
          name: name,
          decoration: const InputDecoration(
            border: InputBorder.none,
          ),
          // initialValue: 'Male',
          hint: text_widget(
            color: colors.fadedLightColorNo,
            fontWeight: FontWeight.w400,
            textAlign: TextAlign.center,
            font: "Lato",
            fontSize: 16,
            text: hintValue,
          ),
          items: mapList
              .map((value) => DropdownMenuItem(
            value: value,
            child: Icon(
              Icons.circle,
              size: 30,
              color: Color(int.parse(value)),
            ),
            onTap: () {},
          ))
              .toList(),
        ),
      ),
    );
  }


  static var chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  static var char = 'DdUuKkAaRr1234567890';
  static Random _rnd = Random();

  static String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => chars.codeUnitAt(_rnd.nextInt(chars.length))));

  void addDashboard(String position,String title,var value,var condition,bool show,fun)async{
    String uid=getRandomString(15+Random().nextInt(10));
    Map <String,dynamic>data={
      "position":position,
      "title":title,
      "value":value??"",
      "condition":condition??"",
      "show":show,
      "uid":uid
    };
    FirebaseFirestore.instance.collection("shoppyDashboard")
        .doc(uid)
        .set(data)
        .then((value) => fun())
        .onError((error, stackTrace) => {
      Get.snackbar("error", error.toString(),snackPosition: SnackPosition.BOTTOM),
      print(error),
    });
  }

  void onTapTrigger(String v,var formKey){
    switch(v){
      case "New dashboard category":
        if (_formKey.currentState!.saveAndValidate()) {
          if (valueString.value == 'quantity') {
            addDashboard(
                formKey.currentState!.value['position'],
                formKey.currentState!.value['title'],
                formKey.currentState!.value['quantity'],
                formKey.currentState!.value['condition'],
                true, () {
              formKey.currentState!.reset();
            });
            return;
          }
          if (onOfferValue.value == true) {
            addDashboard(
                formKey.currentState!.value['position'],
                formKey.currentState!.value['title'],
                onOfferValue.value,
                formKey.currentState!.value['condition'],
                true, () {
              formKey.currentState!.reset();
            });
            return;
          }
          print("category adding");
          addDashboard(
              formKey.currentState!.value['position'],
              formKey.currentState!.value['title'],
              categoryString.value,
              formKey.currentState!.value['condition'],
              true, () {
            formKey.currentState!.reset();
          });
        }
        break;
      case "New Brand":
        if (_formKey.currentState!.saveAndValidate()){
          String id=getRandomString(15);
          addBrand("brands", {
            "brandsID":id,
            "name": _formKey.currentState!.value['brandName'],
            "primaryKey": _formKey.currentState!.value['urlBrandImg']
          }, (){
            //function
            _formKey.currentState!.reset();
          },id);
        }
        break;
      case "New product type":
        if(_formKey.currentState!.saveAndValidate()){
          String id=getRandomString(15);
          addBrand("productType", {
            "typeID":id,
            "url":_formKey.currentState!.value['url'],
            "id": _formKey.currentState!.value['productTypeID'],
            "name": _formKey.currentState!.value['productTypeName'],
            "primaryKey": _formKey.currentState!.value['productTypePrimaryKey'],
          }, () {
            //fun
          },id);
        }
        break;
      case "New product fabric":
        if(_formKey.currentState!.saveAndValidate()){
          String id=getRandomString(15);
          addBrand("productFabric", {
            "fabricID":id,
            "name": _formKey.currentState!.value['productFabricName'],
            "primaryKey": _formKey.currentState!.value['productFabricPrimaryKey'],
          }, () {
            //fun
            _formKey.currentState!.reset();
          },id);
        }
        break;

      case "New product sizes":
        if(_formKey.currentState!.saveAndValidate()){
          String id=getRandomString(15);
          addBrand("sizes", {
            "sizeID":id,
            "name": _formKey.currentState!.value['sizeName'],
            "primaryKey": _formKey.currentState!.value['primaryKey'],
          }, () {
            //fun
            _formKey.currentState!.reset();
          },id);
        }
        break;
    }
  }

  void updateCategory(String? name,String? no,fun,String url)async{
    String categoryID=getRandomString(15);
    Map<String,dynamic>data={
      "name": name,
      "no": no,
      "categoryID":categoryID,
      "url":url
    };
    FirebaseFirestore.instance.collection("categories")
        .doc(categoryID)
        .set(data)
        .then((value) => fun())
        .onError((error, stackTrace) =>Get.snackbar("Add Location", "$error") );
  }

  void addBrand(String collectionPath, Map <String,dynamic> data,fun,String id)async{
    FirebaseFirestore.instance.collection(collectionPath)
        .doc(id)
        .set(data)
        .then((value) => fun())
        .onError((error, stackTrace) =>Get.snackbar("Service add", "$error") );
  }
}