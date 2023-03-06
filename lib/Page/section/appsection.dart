import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Constants/dms_strings.dart';
import '../../../Widgets/button_widgets.dart';
import '../../../Widgets/formbuildtextfield.dart';
import '../../../Widgets/text_widget.dart';
import '../../../style/app_Colors.dart';
import '../Dashboard/dashboard_controller.dart';
import '../Orders/order_page.dart';
import '../Orders/orders_components.dart';
import '../Products/product_management_page.dart';
import '../Vendors/vendor_page.dart';
import 'app_management.dart';
import 'location_management.dart';

class AppSection {
  final controller = Get.find<DashboardController>();

  Widget appBar(){
    return SizedBox(
      width: Get.width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: text_widget(
                  color: AppColors().darkColorNo,
                  fontWeight: FontWeight.w700,
                  textAlign: TextAlign.center,
                  font: "Laila",
                  fontSize: 20,
                  text: "Good Evening",
                ),
              ),
              Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: text_widget(
                      color: AppColors().greyLightColorNo,
                      fontWeight: FontWeight.w400,
                      textAlign: TextAlign.center,
                      font: "Laila",
                      fontSize: 13,
                      text: "Welcome to DMS",
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: text_widget(
                      color: AppColors().darkColorNo,
                      fontWeight: FontWeight.w500,
                      textAlign: TextAlign.center,
                      font: "Laila",
                      fontSize: 13,
                      text: "${FirebaseAuth.instance.currentUser!.email}",
                    ),
                  ),
                  const SizedBox(width: 10,),
                  CircleAvatar(
                    radius: 27,
                    backgroundColor: Color(AppColors().darkColorNo),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 10,),
          const Divider(),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() =>Align(
                alignment: Alignment.centerLeft,
                child: text_widget(
                  color: AppColors().darkColorNo,
                  fontWeight: FontWeight.w700,
                  textAlign: TextAlign.center,
                  font: "Laila",
                  fontSize: 20,
                  text: controller.navValue.value,
                ),
              )),
            ],
          ),
        ],
      ),
    );
  }

  Widget secondSection(){
    switch(controller.navValue.value){
      case "Orders":
        return OrdersWidget();
      case "Users":
        return Column(
          children: [
            filterSection("User summary"),
            const SizedBox(height: 30,),
            // OrdersComponents().orderListing(["Username","Full name","Created On","Email","Action"],["Juuzou","George Mathu","12-12-22-11:24:33","mathu.ke@gmail.com","View"],
            //     (){
            //
            //     }),
          ],
        );
      case "Location Management":
        return LocationManagement().body();
      case "Riders":
        return Column(
          children: [
            Align(
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
            const SizedBox(height: 30,),
            filterSection("Rider summary"),
            const SizedBox(height: 30,),
            // OrdersComponents().orderListing(["Username","Full name","Created On","Email","Action"],["Rider One","John Doh","12-12-22-11:24:33","email@example.com","View"],
            //     (){
            //
            //     }),
          ],
        );
      case "Vendors":
        return VendorPage();
      case "Mobile Applications":
        return AppManagement().body();
      case "Product management":
        return ProductManagementPage();
    }
    return Center(
      child: Align(
        alignment: Alignment.center,
        child: text_widget(
          color: AppColors().fadedLightColorNo,
          fontWeight: FontWeight.w700,
          textAlign: TextAlign.center,
          font: "Laila",
          fontSize: 20,
          text: "Coming soon",
        ),
      ),
    );
  }

  Column OrdersWidget() {
    return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: ["in-progress","on-the-Way","delivered","declined"].map((e) => OrdersComponents().cardPlaceHolder("userOrder",e.toString(),"","state")).toList(),
          ),
          const SizedBox(height: 30,),
          filterSection("Order summary"),
          const SizedBox(height: 30,),
          OrdersComponents().allDetails([
            "Order No","Product name","Quantity","Req. Date","Total price","Action"
          ], () {
            Get.to(OrderPage());
          },"userOrder","timeStamp",50),
          const SizedBox(height: 30,),
          filterSection("Order in-progress"),
          const SizedBox(height: 30,),
          OrdersComponents().orderListing([
            "Order No","Product name","Quantity","Req. Date","Total price","Action"
          ], () {
            Get.to(OrderPage());
          },"userOrder","state","in-progress"),
          const SizedBox(height: 30,),
          filterSection("Order on-the-Way"),
          const SizedBox(height: 30,),
          OrdersComponents().orderListing([
            "Order No","Product name","Quantity","Req. Date","Total price","Action"
          ], () {
            Get.to(OrderPage());
          },"userOrder","state","on-the-Way"),
          const SizedBox(height: 30,),
          filterSection("Order delivered"),
          const SizedBox(height: 30,),
          OrdersComponents().orderListing([
            "Order No","Product name","Quantity","Req. Date","Total price","Action"
          ], () {
            Get.to(OrderPage());
          },"userOrder","state","delivered"),
          const SizedBox(height: 30,),
          filterSection("Order declined"),
          const SizedBox(height: 30,),
          OrdersComponents().orderListing([
            "Order No","Product name","Quantity","Req. Date","Total price","Action"
          ], () {
            Get.to(OrderPage());
          },"userOrder","state","declined"),
        ],
      );
  }

  Widget filterSection(String title){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: text_widget(
            color: AppColors().darkColorNo,
            fontWeight: FontWeight.w600,
            textAlign: TextAlign.center,
            font: "Laila",
            fontSize: 16,
            text: title,
          ),
        ),
        // const SizedBox(width: 50,),
        // const Expanded(
        //   child: SizedBox(
        //   )
        // ),
        // Expanded(
        //   child: formbuildtextfield(
        //       height: 50,
        //       color: 0xff1F1C34,
        //       hintText: "Search by order no",
        //       attribute: "email",
        //       dividerColor: 0xff1F1C34,
        //       errorText: "Search by order no",
        //       font: "Lato",
        //       keybordType: TextInputType.emailAddress,
        //       fontWeight: FontWeight.w400,
        //       fontSize: 15.0,
        //       formType: "text",
        //       dropDownList: [],
        //       submitAction: () {}),
        // ),
        // const SizedBox(width: 50,),
        // Container(
        //   decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(10),
        //       border: Border.all(color: Color(AppColors().greyLightColorNo).withOpacity(0.4))),
        //   width: 170,
        //   child: Padding(
        //     padding: const EdgeInsets.only(left: 8.0),
        //     child: FormBuilderDropdown<String>(
        //       name: 'gender',
        //       iconEnabledColor: Colors.transparent,
        //       focusColor: Colors.transparent,
        //       initialValue: "Today",
        //       decoration: const InputDecoration(
        //           hintText: 'Select Gender',
        //           border: InputBorder.none),
        //       items: [
        //         'Today',
        //         "Tomorrow",
        //         "Customize date"
        //       ]
        //           .map((gender) => DropdownMenuItem(
        //         alignment:
        //         AlignmentDirectional
        //             .centerStart,
        //         value: gender,
        //         child: Text(gender),
        //         onTap: () {
        //
        //         },
        //       ))
        //           .toList(),
        //     ),
        //   ),
        // ),
        // const SizedBox(width: 50,),
        // Container(
        //   decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(10),
        //       border: Border.all(color: Color(AppColors().darkColorNo).withOpacity(0.4))),
        //   width: 170,
        //   child: Padding(
        //     padding: const EdgeInsets.only(left: 8.0),
        //     child: FormBuilderDropdown<String>(
        //       name: 'state',
        //       initialValue: "Delivered",
        //       decoration: const InputDecoration(
        //           border: InputBorder.none),
        //       items: [
        //         'Delivered',
        //         "Declined",
        //         "Awaiting arrival",
        //         "On-going"
        //       ]
        //           .map((gender) => DropdownMenuItem(
        //         alignment:
        //         AlignmentDirectional
        //             .centerStart,
        //         value: gender,
        //         child: Text(gender),
        //         onTap: () {
        //
        //         },
        //       ))
        //           .toList(),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}