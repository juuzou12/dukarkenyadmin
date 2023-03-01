import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/text_widget.dart';
import '../style/app_Colors.dart';

class Graphs {
  //bar-chat component
  Widget barChatBar(double h,String title,int color){
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: text_widget(
              color: AppColors().darkColorNo,
              fontWeight: FontWeight.w400,
              textAlign: TextAlign.start,
              font: "Laila",
              fontSize: 11,
              text: title,
            ),
          ),
          const SizedBox(width: 10,),
          Center(child: Container(
            height: 5,
            width: h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Color(color)
            ),
          )),
        ],
      ),
    );
  }
}