import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class RecommendationDoctor extends StatelessWidget {
  const RecommendationDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Recommendation Doctor", style: TextStyles.intesemiBold18darkBlue),
        Spacer(),
        Text("See All", style: TextStyles.interRegular12mainBlue),
      ],
    );
  }
}
