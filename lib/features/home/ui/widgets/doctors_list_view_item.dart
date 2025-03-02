
import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(16),
            //   child: CachedNetworkImage(
            //     progressIndicatorBuilder: (context, url, downloadProgress) =>
            //         CircularProgressIndicator(
            //       value: downloadProgress.progress,
            //     ),
            //     imageUrl: "https://raw.githubusercontent.com/RandEthar/Doctor-App/refs/heads/main/assets/images/doctor.webp",
            //     errorWidget: (context, url, error) => Icon(Icons.error),
            //   ),
            // ),
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
