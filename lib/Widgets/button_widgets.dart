import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class button_widgets extends StatelessWidget{

  final Widget widget;
  final double height,width,radius;
  final int color,borderColor;
  final fun;

  const button_widgets({required this.widget, required this.height, required this.width, required this.radius, required this.color, required this.borderColor, this.fun});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
      onEnd: (){
        fun();
      },
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        /*gradient: LinearGradient(
          colors: [
            Color(color),
            Color(borderColor)
          ]
        )*/
        color: Color(color),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0,right: 12.0,bottom: 12.0,top: 12.0),
        child: widget,
      ),
    );
  }

}