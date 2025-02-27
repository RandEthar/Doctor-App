import 'package:doctor_app/core/theming/font_wight_helper.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';


class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        
          text: TextSpan(children: [
        TextSpan(
            text: 'By logging, you agree to our ',
            style:
                TextStyles.font13grayRegularWight),
                
              TextSpan(
            text: 'Terms & Conditions',
            style:
                TextStyles.font13grayRegularWight.copyWith(
                  color: Colors.black,fontWeight: FontWeightHelper.bold
                )),
                 TextSpan(
            text: ' and',
            style:
                TextStyles.font13grayRegularWight),
                
              TextSpan(
            text: '\nPrivacyPolicy.',
            style:
                TextStyles.font13grayRegularWight.copyWith(color:  Colors.black,fontWeight: FontWeightHelper.bold,height:1.5 )),
      ])),
    );
  }
}