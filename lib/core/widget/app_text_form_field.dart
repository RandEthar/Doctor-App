


import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({super.key, this.contentPadding, this.enabledBorder,
  
   this.focusedBorder, required this.hintText, this.inputTextStyle,
    this.hintStyle, this.isobscureText, this.suffixIcon,
      this.backgroundColor, required this.validator, this.controller});
  final EdgeInsetsGeometry?contentPadding;
  final InputBorder ?enabledBorder;
    final InputBorder ?focusedBorder;
    final String  hintText;
    final TextStyle? inputTextStyle;
    final TextStyle ?hintStyle;
    final  bool ?isobscureText;
    final Widget?suffixIcon;
    final Color?backgroundColor;
  final Function(String?) validator;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
       validator:(value)=> validator(value),
      style: inputTextStyle?? TextStyles.font14DarkBlueMediumWight,
      obscureText:isobscureText?? false,
      decoration: InputDecoration(
         filled: true,fillColor:backgroundColor?? ColorsManeger.lavenderWhite,
         suffixIcon: suffixIcon,
         hintText:hintText,
        hintStyle:hintStyle??TextStyles.font14grayMediumWight,
          isDense: true,
          contentPadding: contentPadding??EdgeInsetsDirectional.symmetric(vertical: 18.h,horizontal: 20.w)
         ,  focusedBorder:focusedBorder?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
                 color: ColorsManeger.mainBlue,width: 1.3.h
            )
           ),enabledBorder:enabledBorder?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
                 color: ColorsManeger.lighterGray,width: 1.3.h
            )
           ),
       errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
                 color: Colors.red,width: 1.3.h
            )
           ),focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
                 color: Colors.red,width: 1.3.h
            )
           ),



      ),
    );
  }
}