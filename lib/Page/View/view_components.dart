import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

import '../../Graphs/graphs.dart';
import '../../Widgets/text_widget.dart';
import '../../style/app_Colors.dart';
import '../Orders/orders_components.dart';

class ViewComponent {
  //body
  Widget vendorDetails() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          // color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      "assets/images/shop.jpg",
                      width: 300,
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              Align(alignment: Alignment.centerLeft, child: vendorCard()),
              const SizedBox(
                height: 20,
              ),
              Align(alignment: Alignment.centerLeft, child: productProgress()),
            ],
          ),
        ),
      ),
    );
  }

  Widget productProgress() {
    return AnimatedContainer(
      width: 300,
      duration: const Duration(seconds: 1),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: text_widget(
                  color: AppColors().greyLightColorNo,
                  fontWeight: FontWeight.w400,
                  textAlign: TextAlign.center,
                  font: "Poppins",
                  fontSize: 15,
                  text: "Performance",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  {"h": 80, "t": "Sold", "c": AppColors().lightColorNo},
                  {"h": 40, "t": "Out of stock", "c": AppColors().darkColorNo},
                  {
                    "h": 120,
                    "t": "Total products",
                    "c": AppColors().greyLightColorNo
                  },
                  {
                    "h": 30,
                    "t": "Products on offer",
                    "c": AppColors().greenColorInt
                  },
                ]
                    .map((e) => Graphs().barChatBar(
                        double.parse(e['h'].toString()),
                        e['t'].toString(),
                        int.parse(e['c'].toString())))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget vendorCard() {
    return Align(
      alignment: Alignment.centerLeft,
      child: AnimatedContainer(
        width: 300,
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
              SizedBox(
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
                        text: "Sneaker Heaven",
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
                        text: "sneakerheaven@email.com",
                      ),
                    ),
                  ],
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
                child: Icon(
                  Icons.edit,
                  size: 20,
                  color: Color(AppColors().lightColorNo),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget leftSection() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        children: [
          ownerDetails(),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: text_widget(
              color: AppColors().darkColorNo,
              fontWeight: FontWeight.w600,
              textAlign: TextAlign.center,
              font: "Laila",
              fontSize: 16,
              text: "Vendor's order",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // OrdersComponents().orderListing([
          //   "Order No",
          //   "Product name",
          //   "Quantity",
          //   "Req. Date",
          //   "Total price",
          //   "Action"
          // ], [
          //   "SHP-012#",
          //   "Nike Air-force 1s",
          //   "X3",
          //   "4 days ago",
          //   "KES: 12,300",
          //   "View"
          // ], () {}),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [0, 1, 2, 3]
                .map((e) => OrdersComponents().cardPlaceHolder("shoppySellers","",e.toString(),"activationStatus"))
                .toList(),
          ),
          const SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: text_widget(
              color: AppColors().darkColorNo,
              fontWeight: FontWeight.w600,
              textAlign: TextAlign.center,
              font: "Laila",
              fontSize: 16,
              text: "Vendor's riders",
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          // OrdersComponents().orderListing([
          //   "Username",
          //   "Full name",
          //   "Created On",
          //   "Email",
          //   "Action"
          // ], [
          //   "Rider One",
          //   "John Doh",
          //   "12-12-22-11:24:33",
          //   "email@example.com",
          //   "View"
          // ], () {}),
          const SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: text_widget(
              color: AppColors().darkColorNo,
              fontWeight: FontWeight.w600,
              textAlign: TextAlign.center,
              font: "Laila",
              fontSize: 16,
              text: "Vendor's locations",
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          // OrdersComponents().orderListing(
          //     ["Location", "Sub-location", "Country", "City", "Action"],
          //     ["Woodley Kenyatta", "Woodley", "Kenya", "Nairobi", "View"],
          //     () {}),
        ],
      ),
    );
  }

  Widget ownerDetails() {
    return AnimatedContainer(
      width: 300,
      duration: const Duration(seconds: 1),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: text_widget(
                color: AppColors().greyLightColorNo,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.center,
                font: "Poppins",
                fontSize: 15,
                text: "Owner information",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.person_outline,
                      size: 20,
                      color: AppColors().iconColor,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: text_widget(
                        color: AppColors().darkColorNo,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.center,
                        font: "Poppins",
                        fontSize: 13,
                        text: "Jannie Koppie",
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.credit_card_rounded,
                      size: 20,
                      color: AppColors().iconColor,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: text_widget(
                        color: AppColors().darkColorNo,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.center,
                        font: "Poppins",
                        fontSize: 13,
                        text: "35788580",
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.email_outlined,
                      size: 20,
                      color: AppColors().iconColor,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: text_widget(
                        color: AppColors().darkColorNo,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.center,
                        font: "Poppins",
                        fontSize: 13,
                        text: "sneakerheaven@email.com",
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.phone_outlined,
                      size: 20,
                      color: AppColors().iconColor,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: text_widget(
                        color: AppColors().darkColorNo,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.center,
                        font: "Poppins",
                        fontSize: 13,
                        text: "+254798234589",
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
