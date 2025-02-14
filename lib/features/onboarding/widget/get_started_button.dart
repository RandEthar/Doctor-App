import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.h,width:double.infinity,
     decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
       color: ColorsManeger.mainBlue,
     ),
      child: TextButton(
        onPressed:(){}, child:Text("Get Started",style:TextStyles.font16WiteSemiBoldWight,)),
    );
  }
}