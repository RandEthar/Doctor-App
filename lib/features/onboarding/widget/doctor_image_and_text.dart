import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
     Positioned(right: 19.w,left: 0.w,
      child: SvgPicture.asset("assets/svgs/docdoc_logo_low_opacity.svg")),
    Container(
      foregroundDecoration:BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.white,
         Colors.white.withOpacity(0.0)
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        stops:const [0.14,0.4]
        )
      ) ,
      child: Image.asset("assets/images/ondoardingDoctor.png")),
      Positioned(
        bottom:30,left:30,right:30,
        child: Text(
          textAlign: TextAlign.center,
          "Best Doctor\n Appointment App",style: TextStyles.font32BlueBoldWight.copyWith(
            height: 1.4
          ),))



    ],);
  }
}