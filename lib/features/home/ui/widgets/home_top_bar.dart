import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class  HomeTopBar extends StatelessWidget {
  const  HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hi, Rand!",style: TextStyles.interBold18DarkBlue,),
            verticalSpace(4),
                  Text("How Are you Today?",style: TextStyles.interRegular13gray61,),
            ],
          ),Spacer(),
          CircleAvatar(
            backgroundColor: ColorsManeger.whiteSmoke,
            radius: 24.r,
            child: SvgPicture.asset("assets/svgs/notifications.svg"),
          )










      ],);
  }
}