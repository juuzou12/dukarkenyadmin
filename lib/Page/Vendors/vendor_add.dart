import 'package:admin_dukar/style/app_Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

import '../../Controller/vendor_controller.dart';
import '../../Widgets/formbuildtextfield.dart';
import '../../Widgets/text_widget.dart';

class VendorAdding extends GetView<VendorController>{
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
              const FormPlaceHolder(payload: [
                {
                  "hintText":"Store name",
                  "attribute":"storeName"
                },
                {
                  "hintText":"Store phone number",
                  "attribute":"storeNumber"
                },
              ],),
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
              const FormPlaceHolder(payload: [
                {
                  "hintText":"Store email",
                  "attribute":"storeEmail"
                },
                {
                  "hintText":"Store bio/about",
                  "attribute":"bio"
                },
              ],),
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
              const FormPlaceHolder(payload: [
                {
                  "hintText":"Business accepted payment method",
                  "attribute":"payMethod"
                },
                {
                  "hintText":"Business till number",
                  "attribute":"tillNo"
                },
              ],),
              const FormPlaceHolder(payload: [
                {
                  "hintText":"Business PayBill number",
                  "attribute":"payBillNo"
                },
                {
                  "hintText":"Business account number",
                  "attribute":"accNo"
                },
              ],),
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
              const FormPlaceHolder(payload: [
                {
                  "hintText":"Owner name",
                  "attribute":"wonerName"
                },
                {
                  "hintText":"Owner phone number",
                  "attribute":"ownerNo"
                },
              ],),
              const FormPlaceHolder(payload: [
                {
                  "hintText":"Owners National ID/Passport",
                  "attribute":"idPass"
                },
                {
                  "hintText":"Owner email",
                  "attribute":"ownerEmail"
                },
              ],),
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
              const FormPlaceHolder(payload: [
                {
                  "hintText":"Store rating",
                  "attribute":"rating"
                }
              ],),
            ],
          ),
        ),
      ),
    );
  }

}

class FormPlaceHolder extends StatelessWidget {
  final List payload;
  const FormPlaceHolder({
    super.key, required this.payload,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          children:payload.map((e) => Expanded(
            child: Padding(
              padding: payload.length.isGreaterThan(1)?const EdgeInsets.only(right:20.0):const EdgeInsets.only(left:0.0),
              child: formbuildtextfield(
                  height: 50,
                  color: 0xff1F1C34,
                  hintText: e['hintText'],
                  attribute: e['attribute'],
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
          ),).toList(),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}