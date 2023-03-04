import 'package:admin_dukar/style/app_Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

import '../../Controller/vendor_collection.dart';
import '../../Widgets/formbuildtextfield.dart';
import '../../Widgets/text_widget.dart';

class VendorAdding extends GetView<VendorCollection>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Color(AppColors().darkColorNo)
        ),
        title: Align(
          alignment: Alignment.centerLeft,
          child: text_widget(
            color: AppColors().darkColorNo,
            fontWeight: FontWeight.w600,
            textAlign: TextAlign.center,
            font: "Laila",
            fontSize: 15,
            text: "New vendor",
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: FormBuilder(
          child: ListView(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: text_widget(
                  color: AppColors().darkColorNo,
                  fontWeight: FontWeight.w700,
                  textAlign: TextAlign.center,
                  font: "Laila",
                  fontSize: 13,
                  text: "Store Details",
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
                        hintText: "Store name",
                        attribute: "storeName",
                        dividerColor: 0xff1F1C34,
                        errorText: "Enter dashboard position first",
                        font: "Poppins",
                        keybordType: TextInputType.text,
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
                        hintText: "Store phone number",
                        attribute: "businessPhone",
                        dividerColor: 0xff1F1C34,
                        errorText: "Enter dashboard title first",
                        font: "Poppins",
                        keybordType: TextInputType.number,
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
              Align(
                alignment: Alignment.centerLeft,
                child: text_widget(
                  color: AppColors().darkColorNo,
                  fontWeight: FontWeight.w400,
                  textAlign: TextAlign.center,
                  font: "Laila",
                  fontSize: 13,
                  text: "This email will be used to create the store account, and their password will be their activation code.",
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
                        hintText: "Store email",
                        attribute: "storeEmail",
                        dividerColor: 0xff1F1C34,
                        errorText: "Enter dashboard position first",
                        font: "Poppins",
                        keybordType: TextInputType.emailAddress,
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
                        hintText: "Store bio/about",
                        attribute: "storeBio",
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: text_widget(
                      color: AppColors().darkColorNo,
                      fontWeight: FontWeight.w500,
                      textAlign: TextAlign.center,
                      font: "Laila",
                      fontSize: 13,
                      text: "Vendor created offers delivery services",
                    ),
                  ),
                  CupertinoSwitch(
                    activeColor: Colors.green,
                    value: false,
                    onChanged: (value) async {

                    },
                  )
                ],
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
                        hintText: "Delivery fee per Km",
                        attribute: "storeBio",
                        dividerColor: 0xff1F1C34,
                        errorText: "Enter dashboard title first",
                        font: "Poppins",
                        keybordType: TextInputType.number,
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
                    child: formbuildtextfield(
                        height: 50,
                        color: 0xff1F1C34,
                        hintText: "Store accepted payment method",
                        attribute: "storePaymentMethod",
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
                        hintText: "Store payment number",
                        attribute: "storePaymentNo",
                        dividerColor: 0xff1F1C34,
                        errorText: "Enter dashboard title first",
                        font: "Poppins",
                        keybordType: TextInputType.number,
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
                    child: formbuildtextfield(
                        height: 50,
                        color: 0xff1F1C34,
                        hintText: "Store type",
                        attribute: "storeType",
                        dividerColor: 0xff1F1C34,
                        errorText: "Enter dashboard position first",
                        font: "Poppins",
                        keybordType: TextInputType.text,
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
                        hintText: "Store gender target",
                        attribute: "storeGenderTarget",
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
              Align(
                alignment: Alignment.centerLeft,
                child: text_widget(
                  color: AppColors().darkColorNo,
                  fontWeight: FontWeight.w700,
                  textAlign: TextAlign.center,
                  font: "Laila",
                  fontSize: 13,
                  text: "Business owner Details",
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
                        hintText: "Store owner name",
                        attribute: "ownerName",
                        dividerColor: 0xff1F1C34,
                        errorText: "Enter dashboard position first",
                        font: "Poppins",
                        keybordType: TextInputType.text,
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
                        hintText: "Owner phone number",
                        attribute: "ownerPhone",
                        dividerColor: 0xff1F1C34,
                        errorText: "Enter dashboard title first",
                        font: "Poppins",
                        keybordType: TextInputType.number,
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
                    child: formbuildtextfield(
                        height: 50,
                        color: 0xff1F1C34,
                        hintText: "Store owner ID NO",
                        attribute: "ownerId",
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
                        hintText: "Owner email",
                        attribute: "ownerEmail",
                        dividerColor: 0xff1F1C34,
                        errorText: "Enter dashboard title first",
                        font: "Poppins",
                        keybordType: TextInputType.number,
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
              Align(
                alignment: Alignment.centerLeft,
                child: text_widget(
                  color: AppColors().darkColorNo,
                  fontWeight: FontWeight.w700,
                  textAlign: TextAlign.center,
                  font: "Laila",
                  fontSize: 13,
                  text: "Business location details",
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
                        hintText: "Store physical shop latitude",
                        attribute: "ownerLat",
                        dividerColor: 0xff1F1C34,
                        errorText: "Enter dashboard position first",
                        font: "Poppins",
                        keybordType: TextInputType.text,
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
                        hintText: "Store physical shop longitude",
                        attribute: "ownerLong",
                        dividerColor: 0xff1F1C34,
                        errorText: "Enter dashboard title first",
                        font: "Poppins",
                        keybordType: TextInputType.number,
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
            ],
          ),
        ),
      ),
    );
  }

}