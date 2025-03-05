
import 'package:cached_network_image/cached_network_image.dart';
import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class DoctorsListViewItem extends StatelessWidget {
  const DoctorsListViewItem({super.key, this.doctorModel});
  final Doctors? doctorModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 126.h,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
         CachedNetworkImage(
       imageUrl: "https://raw.githubusercontent.com/RandEthar/Doctor-App/refs/heads/main/assets/images/doctor.webp",
       progressIndicatorBuilder: (context, url, downloadProgress) => 
                Shimmer.fromColors(
                baseColor: ColorsManeger. lighterGray,
                highlightColor: Colors.white,
                 child: Container(
                    height: 110.h,width: 110.w,
                  decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(16),
                    color:  ColorsManeger. lighterGray,
                  ),
                 ),
               )
     ,imageBuilder: (context, imageProvider) =>   Container(
                  height: 110.h,width: 110.w,
                decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
                ),
               ),
    ),
            horezontalSpace(16),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    doctorModel?.name ?? "name",
                    style: TextStyles.interBold18DarkBlue
                        .copyWith(fontSize: 16.sp),
                  ),
                  verticalSpace(8),
                  Text("${doctorModel?.degree} | ${doctorModel?.phone}",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.interMedium12gray),
                  verticalSpace(8),
                  Text(doctorModel?.email ?? "email",
                      style: TextStyles.interMedium12gray),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
