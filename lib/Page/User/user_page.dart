import 'package:admin_dukar/Page/User/user_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../Orders/orders_components.dart';
import '../View/view_page.dart';

class Userpage extends GetView<UserController>{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OrdersComponents().allDetails([
          "Full name",
          "Email address",
          "Created On",
          "Phone number",
          "Action"
        ], () {
          controller.action();
        },"shoppyUsers","timeStamp",50),
      ],
    );
  }

}