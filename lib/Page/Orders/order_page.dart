import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../style/app_Colors.dart';
import '../Dashboard/dashboard_components.dart';
import 'order_controller.dart';
import 'orders_components.dart';

class OrderPage extends GetView<OrderController>{
  @override
  Widget build(BuildContext context) {
    final comp=DashboardComponet();
    final orderComp=OrdersComponents();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
            color: Color(AppColors().darkColorNo)
        ),
      ),
      body: Row(
        children: [
          orderComp.orderDetails(),
          orderComp.communication(),
          
        ],
      ),
    );
  }

}