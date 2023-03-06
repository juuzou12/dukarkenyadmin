import 'package:admin_dukar/style/app_Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../Graphs/graphs.dart';
import '../Orders/orders_components.dart';
import '../section/appsection.dart';
import 'product_controller.dart';

class ProductManagementPage extends GetView<ProductManagementController>{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: ["Women's wear","Men's wear","Kid's wear"].map((e) =>
              OrdersComponents().cardPlaceHolder("shoppyProducts",e,"category","category")).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: ["Sport's wear","Street's wear","Official wear"].map((e) =>
              OrdersComponents().cardPlaceHolder("shoppyProducts",e,"category","category")).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: ["Beauty products","Accessories"].map((e) =>
              OrdersComponents().cardPlaceHolder("shoppyProducts",e,"category","category")).toList(),
        ),
        const SizedBox(height: 30,),
        AppSection().filterSection("Product summary"),
        const SizedBox(height: 30,),
        OrdersComponents().allDetails([
          "Name",
          "Price",
          "Category",
          "Image",
          "On-Offer",
          "Seller"
        ], () {

        },"shoppyProducts","timeStamp",50),
        const SizedBox(height: 30,),
      ],
    );
  }

}