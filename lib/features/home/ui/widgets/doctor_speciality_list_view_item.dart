import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/colors.dart';

class DoctorSpecialityListViewItem extends StatelessWidget {
  const DoctorSpecialityListViewItem({super.key, required this.itemIndex, 
 this.specializationsData});
  final  int itemIndex;
 final  SpecializationsData ?specializationsData;
  @override
  Widget build(BuildContext context) {
    return Padding(
           padding: EdgeInsetsDirectional.only(start:  itemIndex==0?0:24.w),
           child: Column(children: [
             CircleAvatar(
               backgroundColor: ColorsManeger.lightBlue,
               radius:28.r,
               child: SvgPicture.asset("assets/svgs/general_speciality.svg",height: 24.h,width: 24.w,),
             ),verticalSpace(12),
             Text(specializationsData?.name??"specialization",style:  TextStyles.interRegular12mainBlue.copyWith(
               color: ColorsManeger.darkBlue
             ),)
           ],),
         );
  }
}