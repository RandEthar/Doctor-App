import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theming/colors.dart';


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class DoctorsShimmerLoading extends StatelessWidget {
  const DoctorsShimmerLoading({super.key});


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 8,
        itemBuilder:(context,index){
        return Container(
        height: 126.h,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Shimmer.fromColors(
                baseColor: ColorsManeger. lighterGray,
                highlightColor: Colors.white,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                        height: 110.h,
                        width: 110.w,
                        fit: BoxFit.cover,
                        "assets/images/doctor.webp")),
              ),
              horezontalSpace(16),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Shimmer.fromColors(
                        baseColor:  ColorsManeger. lighterGray,
                        highlightColor: Colors.white,
                        child: Container(
                          height: 18.h,
                          width: 180.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color:  ColorsManeger. lighterGray,
                          ),
                        )),
                    verticalSpace(8),
                      Shimmer.fromColors(
                        baseColor:ColorsManeger. lighterGray,
                        highlightColor: Colors.white,
                        child: Container(
                          height: 14.h,
                          width: 160.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: ColorsManeger. lighterGray,
                          ),
                        )),
                    verticalSpace(8),
                 Shimmer.fromColors(
                        baseColor: ColorsManeger. lighterGray,
                        highlightColor: Colors.white,
                        child: Container(
                          height: 14.h,
                          width: 160.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color:  ColorsManeger. lighterGray,
                          ),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      );
      }),
    );
  }
}
