import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theming/colors.dart';

class SpecialityListViewItem extends StatelessWidget {
  const SpecialityListViewItem(
      {super.key,
      required this.itemIndex,
      this.specializationsData,
      required this.selectedSpecializationsIndex});
  final int itemIndex;
  final SpecializationsData? specializationsData;
  final int selectedSpecializationsIndex;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          itemIndex == selectedSpecializationsIndex
              ? Container(
                  decoration: BoxDecoration(
                  
                      border: Border.all(color: ColorsManeger.darkBlue,width: 2),
                      shape: BoxShape.circle),
                  child: CircleAvatar(
                    backgroundColor: ColorsManeger.lightBlue,
                    radius: 28.r,
                    child: SvgPicture.asset(
                      "assets/svgs/general_speciality.svg",
                      height: 26.h,
                      width: 26.w,
                    ),
                  ),
                )
              : CircleAvatar(
                  backgroundColor: ColorsManeger.lightBlue,
                  radius: 28.r,
                  child: SvgPicture.asset(
                    "assets/svgs/general_speciality.svg",
                    height: 24.h,
                    width: 24.w,
                  ),
                ),
          verticalSpace(12),
          Text(
            specializationsData?.name ?? "specialization",
            style: itemIndex == selectedSpecializationsIndex
                ? TextStyles.interBold18DarkBlue
                    .copyWith(fontSize: 14.sp)
                : TextStyles.interRegular12mainBlue
                    .copyWith(color: ColorsManeger.darkBlue),
          )
        ],
      ),
    );
  }
}
