import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:doctor_app/core/widget/app_text_button.dart';
import 'package:doctor_app/features/login/logic/cubit/login_cubit.dart';

import 'package:doctor_app/features/login/ui/widgets/dont_have_account_text.dart';
import 'package:doctor_app/features/login/ui/widgets/email_and_password.dart';
import 'package:doctor_app/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:doctor_app/features/login/ui/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 31.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome back",
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  "We're excited to have you back, can't wait to\n see what you've been up to since you last\n logged in.",
                  style: TextStyles.font14grayRegularWight,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const EmailAndPassword(),
                    verticalSpace(25),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot Password?",
                        style: TextStyles.font12mainBlueRegularWight,
                      ),
                    ),
                    verticalSpace(40),
                    AppTextButton(
                      onPressed: () {
                        validateThenDoLogin(context);
                      },
                      textStyle: TextStyles.font16WiteSemiBoldWight,
                      buttonText: "Login",
                      verticalPadding: 6.h,
                    ),
                    verticalSpace(16),
                    const TermsAndConditions(),
                    verticalSpace(60),
                    const DontHaveAccountText()
                   ,const LoginBlocListener(),
                    
                      
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emaitLoadingState();
    }
  }
}
