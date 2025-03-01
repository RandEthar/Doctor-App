import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 100.h,
      child: ListView.builder(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
         return Padding(
           padding: EdgeInsetsDirectional.only(start:  index==0?0:24.w),
           child: Column(children: [
             CircleAvatar(
               backgroundColor: ColorsManeger.lightBlue,
               radius:28.r,
               child: SvgPicture.asset("assets/svgs/general_speciality.svg",height: 24.h,width: 24.w,),
             ),verticalSpace(12),
             Text("General",style:  TextStyles.interRegular12mainBlue.copyWith(
               color: ColorsManeger.darkBlue
             ),)
           ],),
         );
      }),
    );
  }
}