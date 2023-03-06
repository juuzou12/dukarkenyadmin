import 'package:admin_dukar/style/app_Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../Controller/vendor_controller.dart';
import '../../Widgets/button_widgets.dart';
import '../../Widgets/formbuildtextfield.dart';
import '../../Widgets/text_widget.dart';

class VendorAdding extends GetView<VendorController>{
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    String activationCode=controller.getRandomString(6);

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
          key: _formKey,
          child: ListView(
            children: [
              Obx(() => Visibility(
                visible: controller.isGood.isFalse,
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
                          QrImage(data: activationCode,size: 100,),
                          Expanded(
                            child: text_widget(
                              color: AppColors().darkColorNo,
                              fontWeight: FontWeight.w400,
                              textAlign: TextAlign.center,
                              font: "Lato",
                              fontSize: 12,
                              text: "Activation code :- $activationCode",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )),
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
                children: [
                  Expanded(
                    child: formBuilderDropDownUI('genderTarget', "Pick business gender",
                        ['Women only', 'Male only', 'Kids only', 'All genders'],context),
                  ),
                  const SizedBox(width: 20,),
                  Expanded(
                    child: formBuilderDropDownUI('storeType', "Pick business type", [
                      'Clothes & Shoes',
                      'Beauty products',
                      'Accessories',
                      'Salon & Barber',
                      'baby products',
                      'others'
                    ],context),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
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
              formBuilderDropDownUI('payMethod',
                  "Pick payment method", ['MPESA PAYBILL', 'MPESA BUY GOOD'],context),
              const FormPlaceHolder(payload: [
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
                  "attribute":"ownerName"
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
              formBuilderDropDownUI(
                  'businessRating',
                  "Pick a business Rating",
                  [1.0, 1.5, 2.0, 2.5, 3.0, 3.5, 4.0, 4.5, 5.0],context),
              const SizedBox(height: 20,),
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
                        text: "Add Vendor",
                      )
                  ),
                ),
                onTap: (){
                  if(_formKey.currentState!.saveAndValidate()){
                    controller.determinePosition().then((value)async{
                      Map <String,dynamic> payload=await controller.payload(
                          activationCode,
                          _formKey.currentState!.value['storeName'],
                          _formKey.currentState!.value['storeNumber'],
                          true,
                          "0", _formKey.currentState!.value['businessRating'],
                          _formKey.currentState!.value['payMethod'],
                          _formKey.currentState!.value['tillNo'],
                          _formKey.currentState!.value['storeType'],
                          _formKey.currentState!.value['bio'],
                          _formKey.currentState!.value['storeEmail'],
                          _formKey.currentState!.value['genderTarget'], {
                            "ownerEmail": _formKey.currentState!.value['ownerEmail'],
                            "ownerName": _formKey.currentState!.value['ownerName'],
                            "ownerPhoneNo": _formKey.currentState!.value['ownerNo'],
                            "ownerID": _formKey.currentState!.value['idPass'],
                          }, {}, value.latitude, value.longitude);
                      controller.addVendor("shoppySellers", payload, (){
                        //successful
                        print("all good");
                        controller.firebaseAuth.createUserWithEmailAndPassword(email: _formKey.currentState!.value['storeEmail'], password: activationCode).
                        then((value) => _formKey.currentState!.reset());
                      }, (){
                        //failed
                        print("======================");
                      },_formKey.currentState!.value['storeEmail']);
                    });
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
  /*formBuilder dropDown*/
  Widget formBuilderDropDownUI(String name, String hintValue, List mapList,BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Color(AppColors().greyLightColorNo).withOpacity(0.4))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: name != "color"
              ? FormBuilderDropdown(
            name: name,
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            // initialValue: 'Male',
            hint: text_widget(
              color: AppColors().greyLightColorNo,
              fontWeight: FontWeight.w400,
              textAlign: TextAlign.center,
              font: "Lato",
              fontSize: 16,
              text: hintValue,
            ),
            validator: FormBuilderValidators.compose(
                [FormBuilderValidators.required(context)]),
            items: mapList
                .map((value) => DropdownMenuItem(
              value: value,
              child: text_widget(
                color: AppColors().darkColorNo,
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
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            // initialValue: 'Male',
            hint: text_widget(
              color: AppColors().fadedLightColorNo,
              fontWeight: FontWeight.w400,
              textAlign: TextAlign.center,
              font: "Lato",
              fontSize: 16,
              text: hintValue,
            ),
            validator: FormBuilderValidators.compose(
                [FormBuilderValidators.required(context)]),
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
