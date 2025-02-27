import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/theming/font_wight_helper.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';


class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        
          text: TextSpan(children: [
        TextSpan(
            text: 'Already have an account yet?',
            style:
                TextStyles.font13grayRegularWight.copyWith(color: Colors.black)),
                
              TextSpan(
            text: ' Sign Up',
            style:
                TextStyles.font13grayRegularWight.copyWith(color: ColorsManeger.mainBlue,fontWeight: FontWeightHelper.semiBold)),
      ])),
    );
  }
}
