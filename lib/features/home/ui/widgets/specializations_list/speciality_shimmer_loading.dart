import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class SpecialityShimmerLoading extends StatelessWidget {
  const SpecialityShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
          itemCount: 8,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
              child: Column(
                children: [
                  Shimmer.fromColors(
                    baseColor: ColorsManeger. lighterGray,
                    highlightColor: Colors.white,
                    child: const CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  verticalSpace(12),
                  Shimmer.fromColors(
                      baseColor: ColorsManeger. lighterGray,
                      highlightColor: Colors.white,
                      child: Container(
                        height: 14.h,
                           width: 50.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: ColorsManeger. lighterGray,
                        ),
                      )),
                ],
              ),
            );
          }),
    );
  }
}
