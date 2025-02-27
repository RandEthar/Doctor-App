import 'package:doctor_app/core/helpers/extension.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:doctor_app/core/widget/app_text_button.dart';
import 'package:doctor_app/features/onboarding/widget/doctor_image_and_text.dart';
import 'package:doctor_app/features/onboarding/widget/doctor_logo_and_name.dart';
import 'package:doctor_app/features/onboarding/widget/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30.h),
        child: Column(
          children: [
            const DoctorLogoAndName(),
            SizedBox(
              height: 41.02.h,
            ),
            const DoctorImageAndText(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.h),
              child: Column(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    "Manage and schedule all of your medical appointments easily\n with Docdoc to get a new experience.",
                    style: TextStyles.font13grayRegularWight,
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  AppTextButton(
                    onPressed: () {
                      context.pushNamed(Routes.loginScreen);
                    },
                    textStyle: TextStyles.font16WiteSemiBoldWight,
                    buttonText: "Get Started",verticalPadding: 6.h,
                  )
                ],
              ),
            )
          ],
        ),
      ))),
    );
  }
}
