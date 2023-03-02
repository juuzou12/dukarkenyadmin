import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Widgets/text_widget.dart';
import '../../style/app_Colors.dart';
import '../View/view_page.dart';

class OrdersComponents {
  //order
  Widget cardPlaceHolder(String collection,String c,String v,String field) {
    return Expanded(
      child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .collection(collection)
              .where(field,isEqualTo: c)
              .snapshots(),
          builder: (BuildContext context,
              AsyncSnapshot<QuerySnapshot> snapshot) {
            return snapshot.connectionState !=
                ConnectionState.waiting &&
                snapshot.data!.docs.isNotEmpty
                ? Padding(
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
                                fontSize: 20,
                                text: "${snapshot.data!.docs.length}",
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
                                textAlign: TextAlign.start,
                                font: "Laila",
                                fontSize: 14,
                                text: "$c",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                :Padding(
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
                          fontSize: 20,
                          text: "0",
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
                          fontSize: 14,
                          text: "$c",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }

  //listing
  Widget orderListing(List titleList, fun,String collection,String field,String value) {
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
            StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection(collection).where(field,isEqualTo: value)
                    .snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  return  snapshot.connectionState !=
                      ConnectionState.waiting &&
                      snapshot.data!.docs.isNotEmpty
                      ? ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (BuildContext context, int index) {
                        List listOfData=[];
                        if(collection=="shoppySellers"){
                          listOfData=[
                            snapshot.data!.docs[index]['ownerInfo']['ownerName'],snapshot.data!.docs[index]['storeName'],snapshot.data!.docs[index]['timeStamp'],
                            snapshot.data!.docs[index]['storeEmail'],"View"
                          ];
                        }else if(collection=="userOrder"){
                          listOfData=[
                            "SHP-0$index#",
                            snapshot.data!.docs[index]['productInfo']['productName'],
                            snapshot.data!.docs[index]['productInfo']['quantity'],
                            snapshot.data!.docs[index]['timeStamp'],
                            "KES: ${snapshot.data!.docs[index]['orderInfo']['subtotal']}",
                            "View"
                          ];
                        }
                        return Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: listOfData.map((e) => Expanded(
                                  child: InkWell(
                                    hoverColor: Colors.transparent,
                                    onTap: () {
                                      fun();
                                    },
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: text_widget(
                                        color:e=="View"?AppColors().darkColorNo:e=="Remove"?AppColors().darkColorNo:AppColors().greyLightColorNo,
                                        fontWeight:  e=="View"?FontWeight.w600: e=="Remove"?FontWeight.w600:FontWeight.w400,
                                        textAlign: TextAlign.start,
                                        font: "Laila",
                                        fontSize: 14,
                                        text: "$e",
                                      ),
                                    ),
                                  ),
                                )).toList()
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        );
                      })
                      :SizedBox();
                }),
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

  Widget allDetails(List titleList, fun,String collection,String orderBy) {
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
                          alignment: Alignment.centerLeft,
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
            StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection(collection).orderBy(orderBy,descending: false)
                    .snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  return  snapshot.connectionState !=
                      ConnectionState.waiting &&
                      snapshot.data!.docs.isNotEmpty
                      ? ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: dataList(collection,snapshot,index).map((e) => Expanded(
                                  child: InkWell(
                                    hoverColor: Colors.transparent,
                                    onTap: () {
                                      fun(snapshot.data!.docs[index]['locationID']);
                                    },
                                    child: e.toString().isURL?Align(child: Image.network(e,width: 50,height: 50,),alignment: Alignment.centerLeft,):Align(
                                      alignment: Alignment.centerLeft,
                                      child: text_widget(
                                        color:e=="View"?AppColors().darkColorNo:e=="Remove"?AppColors().darkColorNo:AppColors().greyLightColorNo,
                                        fontWeight:  e=="View"?FontWeight.w600: e=="Remove"?FontWeight.w600:FontWeight.w400,
                                        textAlign: TextAlign.start,
                                        font: "Laila",
                                        fontSize: 14,
                                        text: e==""?"---":"$e",
                                      ),
                                    ),
                                  ),
                                )).toList()
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Divider()
                          ],
                        );
                      })
                      :SizedBox();
                }),
          ],
        ),
      ),
    );
  }

  List dataList(String collection,AsyncSnapshot<QuerySnapshot> snapshot,int index){
    List listOfData=[];
    if(collection=="shoppySellers"){
      listOfData=[
        snapshot.data!.docs[index]['ownerInfo']['ownerName'],snapshot.data!.docs[index]['storeName'],snapshot.data!.docs[index]['timeStamp'],
        snapshot.data!.docs[index]['storeEmail'],"View"
      ];
    }else if(collection=="userOrder"){
      listOfData=[
        "SHP-0$index#",
        snapshot.data!.docs[index]['productInfo']['productName'],
        snapshot.data!.docs[index]['productInfo']['quantity'],
        snapshot.data!.docs[index]['timeStamp'],
        "KES: ${snapshot.data!.docs[index]['orderInfo']['subtotal']}",
        "View"
      ];
    }else if(collection=="locations"){
      listOfData=[
        snapshot.data!.docs[index]['country'],
        snapshot.data!.docs[index]['county'],
        snapshot.data!.docs[index]['subCountyName'],
        "${snapshot.data!.docs[index]['locations']}",
        "Remove"
      ];
    }else if(collection=="shoppyDashboard"){
      listOfData=[
        snapshot.data!.docs[index]['title'],
        snapshot.data!.docs[index]['position'],
        snapshot.data!.docs[index]['value'],
        "${snapshot.data!.docs[index]['condition']}",
        "${snapshot.data!.docs[index]['show']}",
        "View"
      ];
    }else if(collection=="categories"){
      listOfData=[
        snapshot.data!.docs[index]['name'],
        snapshot.data!.docs[index]['no'],
        snapshot.data!.docs[index]['url'],
        "${snapshot.data!.docs[index]['categoryID']}",
        "View"
      ];
    }else if(collection=="productType"){
      listOfData=[
        snapshot.data!.docs[index]['name'],
        snapshot.data!.docs[index]['primaryKey'],
        snapshot.data!.docs[index]['url'],
        "${snapshot.data!.docs[index]['id']}",
        "View"
      ];
    }else if(collection=="sizes"){
      listOfData=[
        snapshot.data!.docs[index]['name'],
        snapshot.data!.docs[index]['primaryKey'],
        "Remove"
      ];
    }else if(collection=="productFabric"){
      listOfData=[
        snapshot.data!.docs[index]['name'],
        snapshot.data!.docs[index]['primaryKey'],
        "Remove"
      ];
    }else if(collection=="brands"){
      listOfData=[
        snapshot.data!.docs[index]['name'],
        snapshot.data!.docs[index]['primaryKey'],
        "Remove"
      ];
    }
    return listOfData;
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

