import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Widgets/button_widgets.dart';
import '../../Widgets/text_widget.dart';
import '../../style/app_Colors.dart';
import '../Orders/orders_components.dart';
import '../View/view_page.dart';
import '../section/appsection.dart';

class VendorPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: ["notActivated","Activated"].map((e) =>
              OrdersComponents().cardPlaceHolder("shoppySellers",e,"activationStatus","activationStatus")).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: ["Standard package plan","Basic package plan","Premium package plan","VIP package plan"].map((e) =>
              OrdersComponents().cardPlaceHolder("shoppySellers",e,"packagePlan","status")).toList(),
        ),
        const SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: button_widgets(
                color: AppColors().lightColorNo,
                height: 45,
                width: 150,
                radius: 5,
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
                      text: "New Vendor",
                    )
                ),
              ),
            ),
            const SizedBox(width: 10,),
            Align(
              alignment: Alignment.centerRight,
              child: button_widgets(
                color: AppColors().fadedLightColorNo,
                height: 50,
                width: 150,
                radius: 10,
                borderColor: 0xffFF9C27B0,
                fun: (){

                },
                widget: Center(
                    child: text_widget(
                      color: AppColors().darkColorNo,
                      fontWeight: FontWeight.w400,
                      textAlign: TextAlign.center,
                      font: "Lato",
                      fontSize: 15,
                      text: "Disable",
                    )
                ),
              ),
            ),
            const SizedBox(width: 10,),
            Align(
              alignment: Alignment.centerRight,
              child: button_widgets(
                color: AppColors().fadedLightColorNo,
                height: 50,
                width: 150,
                radius: 10,
                borderColor: 0xffFF9C27B0,
                fun: (){

                },
                widget: Center(
                    child: text_widget(
                      color: AppColors().darkColorNo,
                      fontWeight: FontWeight.w400,
                      textAlign: TextAlign.center,
                      font: "Lato",
                      fontSize: 15,
                      text: "Validate",
                    )
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 30,),
        AppSection().filterSection("Vendor's summary"),
        const SizedBox(height: 30,),
        OrdersComponents().allDetails([
          "Vendor's name",
          "Business name",
          "Created On",
          "Business Email",
          "Action"
        ], () {
          Get.to(ViewPage());
        },"shoppySellers","timeStamp"),
        const SizedBox(height: 30,),
        Align(
          alignment: Alignment.centerLeft,
          child: text_widget(
            color: AppColors().darkColorNo,
            fontWeight: FontWeight.w600,
            textAlign: TextAlign.center,
            font: "Laila",
            fontSize: 16,
            text: "Active vendors",
          ),
        ),
        const SizedBox(height: 30,),
        OrdersComponents().orderListing([
          "Vendor's name",
          "Business name",
          "Created On",
          "Business Email",
          "Action"
        ], () {
          Get.to(ViewPage());
        },"shoppySellers","activationStatus","Activated"),
        const SizedBox(height: 30,),
        Align(
          alignment: Alignment.centerLeft,
          child: text_widget(
            color: AppColors().darkColorNo,
            fontWeight: FontWeight.w600,
            textAlign: TextAlign.center,
            font: "Laila",
            fontSize: 16,
            text: "In-Active vendors",
          ),
        ),
        const SizedBox(height: 30,),
        OrdersComponents().orderListing([
          "Vendor's name",
          "Business name",
          "Created On",
          "Business Email",
          "Action"
        ], () {
          Get.to(ViewPage());
        },"shoppySellers","activationStatus","notActivated"),
      ],
    );
  }

}