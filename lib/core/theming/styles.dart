import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/theming/font_wight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles{

static TextStyle font24BlacW700Wight=TextStyle(
  color: Colors.black,
  fontSize: 24.sp,
  fontWeight: FontWeight.bold
);
static TextStyle font32BlueBoldWight=TextStyle(
  color: ColorsManeger.mainBlue,
  fontSize: 32.sp,
  fontWeight: FontWeight.bold
);
static TextStyle font24BlueBold=TextStyle(
  color: ColorsManeger.mainBlue,
  fontSize: 24.sp,
  fontWeight: FontWeightHelper.bold
);
static TextStyle font13grayRegularWight=TextStyle(
  color: ColorsManeger.gray,
  fontSize: 13.sp,
  fontWeight: FontWeightHelper.regular
);
static TextStyle font13RegulardarkBlue=TextStyle(
  color: ColorsManeger.darkBlue,
  fontSize: 13.sp,
  fontWeight: FontWeightHelper.regular
);
static TextStyle font16WiteSemiBoldWight=TextStyle(
  color: Colors.white,
  fontSize: 16.sp,
  fontWeight: FontWeight.w600
);

static TextStyle font14grayRegularWight=TextStyle(
  color: ColorsManeger.gray,
  fontSize: 14.sp,
  fontWeight: FontWeightHelper.regular
);
static TextStyle font14grayMediumWight=TextStyle(
  color: ColorsManeger.lightGray,
  fontSize: 14.sp,
  fontWeight: FontWeightHelper.medium
);
static TextStyle font14DarkBlueMediumWight=TextStyle(
  color: ColorsManeger.darkBlue,
  fontSize: 14.sp,
  fontWeight: FontWeightHelper.medium
);
static TextStyle font12mainBlueRegularWight=TextStyle(
  color: ColorsManeger.mainBlue,
  fontSize: 14.sp,
  fontWeight: FontWeightHelper.regular
);







}