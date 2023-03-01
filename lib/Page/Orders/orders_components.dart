import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Widgets/text_widget.dart';
import '../../style/app_Colors.dart';
import '../View/view_page.dart';

class OrdersComponents {
  //order
  Widget cardPlaceHolder(int index) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(AppColors().whiteColorNo),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: text_widget(
                    color: AppColors().greyLightColorNo,
                    fontWeight: FontWeight.w600,
                    textAlign: TextAlign.center,
                    font: "Laila",
                    fontSize: 40,
                    text: "$index",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: text_widget(
                    color: AppColors().darkColorNo,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.center,
                    font: "Laila",
                    fontSize: 15,
                    text: "Requested",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //listing
  Widget orderListing(List titleList, List dataList, fun) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(AppColors().fadedLightColorNo))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: titleList
                  .map((e) => Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: text_widget(
                            color: 0xff0EA390,
                            fontWeight: FontWeight.w600,
                            textAlign: TextAlign.center,
                            font: "Laila",
                            fontSize: 14,
                            text: e,
                          ),
                        ),
                      ))
                  .toList(),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(),
            Column(
              children: [0, 1, 2, 3]
                  .map((e) => Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: dataList
                                .map(
                                  (e) => Expanded(
                                    child: InkWell(
                                      hoverColor: Colors.transparent,
                                      onTap: () {
                                        if (e == "View") {
                                          fun();
                                        }
                                      },
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: text_widget(
                                          color: e == "View"
                                              ? AppColors().darkColorNo
                                              : AppColors().greyLightColorNo,
                                          fontWeight: e == "View"
                                              ? FontWeight.w600
                                              : FontWeight.w400,
                                          textAlign: TextAlign.center,
                                          font: "Laila",
                                          fontSize: 14,
                                          text: e,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ))
                  .toList(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: text_widget(
                        color: AppColors().darkColorNo,
                        fontWeight: FontWeight.w300,
                        textAlign: TextAlign.center,
                        font: "Laila",
                        fontSize: 12,
                        text: "4-20",
                      )),
                  Icon(
                    Icons.navigate_next,
                    size: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  //order details
  Widget orderDetails() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: Get.width/2,
        height: Get.height,
        child: ListView(
          children: [
            vendorCard(),
            const SizedBox(height: 20,),
            specifications(),
            const SizedBox(height: 20,),
            pricing(),
            const SizedBox(height: 20,),
            deliveryDetails(),
            const SizedBox(height: 20,),
            buyerDetails(),
            const SizedBox(height: 20,),
            progress(),
          ],
        ),
      ),
    );
  }

  Widget vendorCard() {
    return Align(
      alignment: Alignment.centerLeft,
      child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 27,
                backgroundColor: Color(AppColors().darkColorNo),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: SizedBox(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: text_widget(
                          color: AppColors().darkColorNo,
                          fontWeight: FontWeight.w600,
                          textAlign: TextAlign.start,
                          font: "Laila",
                          fontSize: 15,
                          text: "Product name",
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: text_widget(
                          color: AppColors().greyLightColorNo,
                          fontWeight: FontWeight.w300,
                          textAlign: TextAlign.start,
                          font: "Laila",
                          fontSize: 11,
                          text: "Product price",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Expanded(
                  child: SizedBox(
                    width: 10,
                  )),
              CircleAvatar(
                radius: 15,
                backgroundColor:
                Color(AppColors().greenColorInt).withOpacity(0.3),
                child: Align(
                  alignment: Alignment.center,
                  child: text_widget(
                    color: AppColors().greyLightColorNo,
                    fontWeight: FontWeight.w300,
                    textAlign: TextAlign.start,
                    font: "Laila",
                    fontSize: 11,
                    text: "X4",
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget specifications(){
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: text_widget(
                    color: AppColors().greyLightColorNo,
                    fontWeight: FontWeight.w500,
                    textAlign: TextAlign.start,
                    font: "Laila",
                    fontSize: 14,
                    text: "Sizes",
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: text_widget(
                    color: AppColors().darkColorNo,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.start,
                    font: "Laila",
                    fontSize: 13,
                    text: "44UK, 45UK, 40UK, 34US",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: text_widget(
                    color: AppColors().greyLightColorNo,
                    fontWeight: FontWeight.w500,
                    textAlign: TextAlign.start,
                    font: "Laila",
                    fontSize: 14,
                    text: "Colors",
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: text_widget(
                    color: AppColors().darkColorNo,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.start,
                    font: "Laila",
                    fontSize: 13,
                    text: "Blue, Red, White, Black",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: text_widget(
                    color: AppColors().greyLightColorNo,
                    fontWeight: FontWeight.w500,
                    textAlign: TextAlign.start,
                    font: "Laila",
                    fontSize: 14,
                    text: "Specification",
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: text_widget(
                    color: AppColors().darkColorNo,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.start,
                    font: "Laila",
                    fontSize: 13,
                    text: "Synthetic rubber",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }

  Widget deliveryDetails(){
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: text_widget(
                    color: AppColors().greyLightColorNo,
                    fontWeight: FontWeight.w500,
                    textAlign: TextAlign.start,
                    font: "Laila",
                    fontSize: 14,
                    text: "Estimated Delivery data",
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: text_widget(
                    color: AppColors().darkColorNo,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.start,
                    font: "Laila",
                    fontSize: 13,
                    text: "2023 / 02 / 21 : 12:00",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: text_widget(
                    color: AppColors().greyLightColorNo,
                    fontWeight: FontWeight.w500,
                    textAlign: TextAlign.start,
                    font: "Laila",
                    fontSize: 14,
                    text: "Location",
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: text_widget(
                    color: AppColors().blueShadedColorNo,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.start,
                    font: "Laila",
                    fontSize: 13,
                    text: "Kwa Njenga, Embakasi South, Nairobi, Kenya",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }

  Widget buyerDetails(){
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: text_widget(
                    color: AppColors().greyLightColorNo,
                    fontWeight: FontWeight.w500,
                    textAlign: TextAlign.start,
                    font: "Laila",
                    fontSize: 14,
                    text: "Buyer name",
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: text_widget(
                    color: AppColors().darkColorNo,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.start,
                    font: "Laila",
                    fontSize: 13,
                    text: "John Doh",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: text_widget(
                    color: AppColors().greyLightColorNo,
                    fontWeight: FontWeight.w500,
                    textAlign: TextAlign.start,
                    font: "Laila",
                    fontSize: 14,
                    text: "Buyer phone number",
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: text_widget(
                    color: AppColors().blueShadedColorNo,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.start,
                    font: "Laila",
                    fontSize: 13,
                    text: "+24798123456",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }

  Widget pricing(){
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: text_widget(
                    color: AppColors().greyLightColorNo,
                    fontWeight: FontWeight.w500,
                    textAlign: TextAlign.start,
                    font: "Laila",
                    fontSize: 14,
                    text: "Product price",
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: text_widget(
                    color: AppColors().darkColorNo,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.start,
                    font: "Laila",
                    fontSize: 13,
                    text: "KES: 3200",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: text_widget(
                    color: AppColors().greyLightColorNo,
                    fontWeight: FontWeight.w500,
                    textAlign: TextAlign.start,
                    font: "Laila",
                    fontSize: 14,
                    text: "Delivery cost",
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: text_widget(
                    color: AppColors().darkColorNo,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.start,
                    font: "Laila",
                    fontSize: 13,
                    text: "KES: 350",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: text_widget(
                    color: AppColors().greyLightColorNo,
                    fontWeight: FontWeight.w500,
                    textAlign: TextAlign.start,
                    font: "Laila",
                    fontSize: 14,
                    text: "Digital service tax",
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: text_widget(
                    color: AppColors().darkColorNo,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.start,
                    font: "Laila",
                    fontSize: 13,
                    text: "KES: 20",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: text_widget(
                    color: AppColors().greyLightColorNo,
                    fontWeight: FontWeight.w500,
                    textAlign: TextAlign.start,
                    font: "Laila",
                    fontSize: 14,
                    text: "Total",
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: text_widget(
                    color: AppColors().lightColorNo,
                    fontWeight: FontWeight.w600,
                    textAlign: TextAlign.start,
                    font: "Laila",
                    fontSize: 15,
                    text: "KES: 3200",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }

  Widget progress(){
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            0,1,2,3
          ].map((e) => Row(
            children: [
              CircleAvatar(
                radius: 5,
                backgroundColor: Color(AppColors().lightColorNo),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: text_widget(
                    color: AppColors().darkColorNo,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.start,
                    font: "Laila",
                    fontSize: 14,
                    text: "Awaiting vendor acceptance",
                  ),
                ),
              ),
              Icon(Icons.check_circle_outline,size: 15,color: Color(AppColors().lightColorNo),)
            ],
          )).toList(),
        ),
      ),
    );
  }

  Widget communication(){
    return Padding(
      padding: const EdgeInsets.only(bottom: 50.0,left: 15.0),
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: AppColors().fadedLightColor
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: text_widget(
                    color: AppColors().darkColorNo,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.start,
                    font: "Laila",
                    fontSize: 14,
                    text: "Hey there i have placed an order for Gucci bag",
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: AppColors().darkColor
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: text_widget(
                        color: AppColors().whiteColorNo,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.start,
                        font: "Laila",
                        fontSize: 14,
                        text: "Hey there i have placed an order for Gucci bag",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

