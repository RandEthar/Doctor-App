import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorLogoAndName extends StatelessWidget {
  const DoctorLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
         SvgPicture.asset("assets/svgs/docdoc_logo.svg",height: 38.02.h,width: 38.02.w,),
         SizedBox(width: 9.52.w,)
      ,Text("DocDoc",style:TextStyles.font24BlacW700Wight)
      
      
        ],),
    );
  }
}