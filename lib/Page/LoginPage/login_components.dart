import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/dms_strings.dart';
import '../../Widgets/button_widgets.dart';
import '../../Widgets/formbuildtextfield.dart';
import '../../Widgets/text_widget.dart';
import '../../style/app_Colors.dart';
import '../Dashboard/dashboard_page.dart';
import 'login_controller.dart';

class LoginComponents{
  final controller= Get.find<LoginController>();
  //placeholder
  Widget placeHolder(int colorValue,Widget widget,String tag){
    return Expanded(
        child: Hero(
          tag: tag,
          child: Container(
            decoration: BoxDecoration(
              color: Color(colorValue),
              borderRadius: BorderRadius.circular(20)
            ),
            child: widget,
          ),
        ),
    );
  }

  //right component
  Widget leftComponent(){
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              "assets/images/shoppy_icon.jpg",
              width: 100,
              height: 100,
            ),
          ),
          const SizedBox(height: 50,),
          Align(
            alignment: Alignment.centerLeft,
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 30.0,
                fontFamily: 'Agne',
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText( DsmString.welcomeMsg,
                      textStyle: GoogleFonts.getFont(
                          "Lato",
                        fontSize: 35,
                        color: Color(AppColors().darkColorNo),
                        fontWeight: FontWeight.w600,
                      )),
                ],
                repeatForever: false,
                isRepeatingAnimation: false,
                onFinished: () {
                  print("Tap Event");
                  controller.showMsg.toggle();
                  controller.wholeFormH.value=Get.height;
                },
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Obx(() => Visibility(
            visible: controller.showMsg.isTrue,
            child: Align(
              alignment: Alignment.centerLeft,
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Agne',
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText( DsmString.descriptionMsg,
                        textStyle: GoogleFonts.getFont(
                          "Lato",
                          fontSize: 15,
                          color: Color(AppColors().greyLightColorNo),
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                  repeatForever: false,
                  isRepeatingAnimation: false,
                  onFinished: () {
                    print("Tap Event");
                    controller.wholeFormH.value=Get.height;
                  },
                ),
              ),
            ),
          )),
        ],
      ),
    );
  }

  //left component
  Widget formComponent(){
    return Padding(
      padding: const EdgeInsets.all(100.0),
      child: Center(
        child: Obx(() => Padding(
          padding: const EdgeInsets.all(40.0),
          child: Center(
            child: Visibility(
              visible: controller.showForm.isTrue,
              child: FormBuilder(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: text_widget(
                          color: AppColors().darkColorNo,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.center,
                          font: "Laila",
                          fontSize: 13,
                          text: DsmString.staffID,
                        ),
                      ),
                    ),
                    formbuildtextfield(
                        height: 50,
                        color: 0xff1F1C34,
                        hintText: DsmString.staffID,
                        attribute: "email",
                        dividerColor: 0xff1F1C34,
                        errorText: "Enter ${DsmString.staffID}",
                        font: "Lato",
                        keybordType: TextInputType.emailAddress,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0,
                        formType: "text",
                        dropDownList: [],
                        submitAction: () {}),
                    const SizedBox(height: 20,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: text_widget(
                          color: AppColors().darkColorNo,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.center,
                          font: "Laila",
                          fontSize: 13,
                          text: DsmString.staffPswd,
                        ),
                      ),
                    ),
                    formbuildtextfield(
                        height: 50,
                        color: 0xff1F1C34,
                        hintText: DsmString.staffPswd,
                        attribute: "email",
                        dividerColor: 0xff1F1C34,
                        errorText: "Enter ${DsmString.staffPswd}",
                        font: "Lato",
                        keybordType: TextInputType.number,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0,
                        formType: "text",
                        dropDownList: [],
                        submitAction: () {}),
                    const SizedBox(height: 50,),
                    MouseRegion(
                      onEnter: (v){
                        controller.isHoveredOnTop.toggle();
                      },
                      onExit: (v){
                        controller.isHoveredOnTop.toggle();
                      },
                      onHover: (v){
                        print('Mouse is hovering over this widget!$v');
                      },
                      child: InkWell(
                        onTap: (){
                          Get.to(DashboardPage());
                        },
                        child: button_widgets(
                          color: AppColors().lightColorNo,
                          height: controller.formH.value,
                          width: 150,
                          radius: 10,
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
                                text: "Gain access",
                              )
                          ),
                    ),
                      )),
                  ],
                ),
              ),
            ),
          ),
        )),
      ),
    );
  }
}