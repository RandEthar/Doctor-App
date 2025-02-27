


import 'package:doctor_app/core/theming/colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton(
      {super.key,
      required this.buttonText,
      this.borderRadius,
      required this.textStyle,
      required this.onPressed,
      this.horizontalPadding,
      this.buttonwidth,
      this.buttonhight,
      this.verticalPadding,
      this.backgroundColor});
  final String buttonText;
  final double? borderRadius;
  final TextStyle textStyle;
  final void Function() onPressed;
  final double? horizontalPadding;

  final double? buttonwidth;
  final double? buttonhight;
  final double? verticalPadding;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding ??12.w, vertical: verticalPadding?? 14.h),
      height: buttonhight ??52.h,
      width: buttonwidth??double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular( borderRadius??16.r),
        color: backgroundColor?? ColorsManeger.mainBlue,
      ),
      child: TextButton(
          onPressed: onPressed,
          child: Text(
           buttonText,
            style: textStyle,
          )),
    );
  }
}