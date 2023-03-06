import 'package:admin_dukar/Page/Vendors/vendor_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Page/Orders/order_page.dart';

class DsmString{
  static  String welcomeMsg="Dukar Management System";
  static  String descriptionMsg="Dukar Management System -(DMS) is a monitoring system that manage the data from our products.";
  static  String request="Request access to the system ->";
  static  String staffID="Your staff ID";
  static  String country="Country name";
  static  String county="County name";
  static  String location="Location name";
  static  String subcounty="Sub-County name";
  static  String staffPswd="Staff password";
  static  String writeMsg="write message here...";
  static  List menu=[{
      "name":"Vendors",
      "icon":Icons.storefront,
    }, {
      "name":"Orders",
      "icon":Icons.shopping_bag_outlined,
    }, {
      "name":"Users",
      "icon":Icons.supervised_user_circle_outlined,
    }, {
      "name":"Riders",
      "icon":Icons.delivery_dining_outlined,

    }, {
      "name":"Media & Photos",
      "icon":Icons.tv_outlined,

    }, {
      "name":"Collections",
      "icon":Icons.collections_outlined,

    }, {
      "name":"Mobile Applications",
      "icon":Icons.phone_android_rounded,

    }, {
      "name":"Location Management",
      "icon":Icons.location_on_outlined,

    }, {
      "name":"Product management",
      "icon":Icons.shelves,

    }, {
      "name":"Ads & Revenue",
      "icon":Icons.monetization_on_outlined,

    },];

}
