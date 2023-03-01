import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Widgets/button_widgets.dart';
import '../../Widgets/text_widget.dart';
import '../../style/app_Colors.dart';
import '../Dashboard/section/appsection.dart';
import '../Orders/orders_components.dart';
import '../View/view_page.dart';

class VendorPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [0,1,2,3].map((e) => OrdersComponents().cardPlaceHolder(e)).toList(),
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
        OrdersComponents().orderListing(["Vendor's name","Business name","Created On","Business Email","Action"],["Kemmie Koppie","SneakersHeaven","12-12-22-11:24:33","sneakersheaven@example.com","View"],
                (){
              Get.to(ViewPage());
            }),
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
        OrdersComponents().orderListing(["Vendor's name","Business name","Created On","Business Email","Action"],["Kemmie Koppie","SneakersHeaven","12-12-22-11:24:33","sneakersheaven@example.com","View"],
                (){
              Get.to(ViewPage());
            }),
      ],
    );
  }

}