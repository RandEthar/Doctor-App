import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListViewItem extends StatelessWidget {
  const DoctorsListViewItem ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 126.h,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                    "assets/images/doctor.webp",
                      height: 110.h,
                      width: 110.w,
                      fit: BoxFit.cover,
                    )),
                horezontalSpace(16),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dr.Sarah Al-Mansour",
                      style: TextStyles.interBold18DarkBlue
                          .copyWith(fontSize: 16.sp),
                    ),
                    verticalSpace(8),
                    Text("Degree | 0592143756",
                        style: TextStyles.interMedium12gray),
                           verticalSpace(8),
                            Text("sarah@gmail.com",
                        style: TextStyles.interMedium12gray),
                  ],
                )
              ],
            ),
          ),
        );
  }
}