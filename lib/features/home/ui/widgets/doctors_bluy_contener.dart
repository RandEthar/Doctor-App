import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsBluyContener extends StatelessWidget {
  const DoctorsBluyContener({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
   
      height: 195.h,
      child: Stack(
           alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 165.h,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.w),
            decoration: BoxDecoration(
              color: Colors.amber,
                borderRadius: BorderRadius.circular(24.r),
                image: DecorationImage(
                    image: AssetImage("assets/images/home_blue_pattern.png"),
                    fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Book and \nschedule with\n nearest doctor",
                    style: TextStyles.interMedium18white),
                verticalSpace(16),
                Expanded(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            
                              borderRadius: BorderRadius.circular(48.r))),
                      onPressed: () {},
                      child: Text(
                        "Find Nearby",
                        style: TextStyles.interRegular13gray61.copyWith(
                            fontSize: 13.sp, color: ColorsManeger.mainBlue),
                      )),
                )
              ],
            ),
          ),Positioned(
           top: 0,right:16,
            child: Image.asset("assets/images/Image.png",height: 200.h,))
        ],
      ),
    );
  }
}
