import 'package:doctor_app/core/helpers/app_regex.dart';
import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/widget/app_text_form_field.dart';
import 'package:doctor_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_app/features/login/ui/widgets/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isobscureText = true;
  bool hasLowerCase=false;
 bool hasUpperCase=false;
 bool hasNumber=false;
 bool hasMinLength=false;
 bool hasSpecialCharacter=false;
  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordController();
  }
  void setupPasswordController() {
    passwordController.addListener((){
     setState(() {
       hasLowerCase=AppRegex.hasLowerCase(passwordController.text);
hasUpperCase=AppRegex.hasUpperCase(passwordController.text);
hasNumber=AppRegex.hasNumber(passwordController.text);
 hasMinLength=AppRegex.hasMinLength(passwordController.text);
 hasSpecialCharacter=AppRegex.hasSpecialCharacter(passwordController.text);
     });
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
   // passwordController.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            controller: context.read<LoginCubit>().emailController,
            validator: (value) {
              if (value == null || value.isEmpty||!AppRegex.isEmailValid(value)) {
                return "Please enter a valid email";
              }  return null;
            },
            hintText: 'Email',
          ),
          verticalSpace(18),
          AppTextFormField(
              controller: context.read<LoginCubit>().passwordController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a valid Password";
                }  return null;
              },
              hintText: 'Password',
              isobscureText: isobscureText,
              suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isobscureText = !isobscureText;
                    });
                  },
                  child: Icon(isobscureText
                      ? Icons.visibility_off
                      : Icons.visibility))),
                     verticalSpace(24),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: PasswordValidations(hasLowerCase: hasLowerCase,
                          hasMinLength: hasMinLength,
                          hasSpecialCharacter: hasSpecialCharacter,
                          hasNumber: hasNumber,
                          hasUpperCase: hasUpperCase,
                          
                          ),
                        )
        ],
      ),
    );
  }
  

}
