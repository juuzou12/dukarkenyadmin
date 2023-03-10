import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:google_fonts/google_fonts.dart';

import '../style/app_Colors.dart';

class formbuildtextfield extends StatefulWidget{
  final String attribute, hintText, font, errorText;
  final int color, dividerColor;
  final double fontSize, height;
  final FontWeight fontWeight;
  final TextInputType keybordType;
  final String formType;
  final List dropDownList;
  final Function submitAction;
  final fun;
  final showClear;

  const formbuildtextfield({required this.attribute, required this.hintText, required this.font, required this.errorText, required this.color, required this.dividerColor, required this.fontSize, required this.height, required this.fontWeight, required this.keybordType, required this.formType, required this.dropDownList, required this.submitAction, this.fun, this.showClear});
  @override
  State<StatefulWidget> createState() {
    return _formbuildtextfieldState();
  }

}

class _formbuildtextfieldState extends State<formbuildtextfield> {
  bool showPassword=true;
  AppColors colors=AppColors();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Color(AppColors().greyLightColorNo).withOpacity(0.4))),
      child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: FormBuilderTextField(
            name: widget.attribute,
            style: TextStyle(
              fontFamily: widget.font,
              fontSize:
              widget.hintText == "Series title" ? 16 : widget.fontSize,
              fontWeight: widget.fontWeight,
            ),
            obscureText: widget.hintText.toLowerCase().contains("password")||widget.hintText.toLowerCase().contains("characters")
                ? showPassword
                : false,
            keyboardType: widget.keybordType,
            onChanged: (v){
              widget.submitAction(v);
            },
            textCapitalization: widget.hintText.toLowerCase().contains("email")
                ? TextCapitalization.none
                : TextCapitalization.sentences,
            textInputAction: TextInputAction.next,
            showCursor: true,
            enableSuggestions: true,
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(context),
            ]),
            decoration: InputDecoration(
              border: InputBorder.none,
              suffixIcon: widget.hintText.toLowerCase().contains("password")||widget.hintText.toLowerCase().contains("characters")
                  ? InkWell(
                child: Icon(
                  showPassword == false
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: Color(widget.color),
                ),
                onTap: () {
                  if (showPassword == true) {
                    setState(() {
                      showPassword = false;
                    });
                  } else {
                    setState(() {
                      showPassword = true;
                    });
                  }
                },
              )
                  : widget.hintText.toLowerCase().contains("search by product name")?Visibility(
                visible: widget.showClear==true,
                    child: InkWell(child: Icon(Icons.clear),
              onTap: (){
                widget.fun();
              },),
                  ):SizedBox(),
              hintText: widget.hintText,
              hintStyle: GoogleFonts.getFont(
                widget.font,
                color: Color(AppColors().greyLightColorNo),
                fontSize: widget.fontSize,
                fontWeight: widget.fontWeight,
              ),
            ),
          )),
    );
  }
}