import 'package:doctor_app/core/helpers/extension.dart';
import 'package:doctor_app/core/networking/api_error_model.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:doctor_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_app/features/login/logic/cubit/login_state.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is LoginLoading || current is LoginSuccess || current is LoginError,
      listener: (context, state) {
        state.whenOrNull(
         loginloading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManeger.mainBlue,
                ),
              ),
            );
          },
         loginsuccess: (loginResponse) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
         loginerror: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context,ApiErrorModel  apiErrorModel) {
    context.pop();
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              icon: Icon(
                Icons.error,
                color: Colors.red,
                size: 24,
              ),
              content: Text(
               apiErrorModel.getAllErrorMessage(),
                style: TextStyles.font14grayRegularWight,
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: Text(
                      'Got it',
                      style: TextStyles.font14grayRegularWight,
                    ))
              ],
            ));
  }
}
