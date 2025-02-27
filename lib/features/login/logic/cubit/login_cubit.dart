import 'package:doctor_app/core/networking/api_result.dart';
import 'package:doctor_app/features/login/data/model/login_request_body.dart';

import 'package:doctor_app/features/login/data/model/login_response.dart';
import 'package:doctor_app/features/login/data/repos/login_repo.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doctor_app/features/login/logic/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final LoginRepo _loginRepo;
  void emaitLoadingState() async {
    emit(const LoginState.loading());
    ApiResult<LoginResponse> response =
        await _loginRepo.login(LoginRequestBody(email: emailController.text,password: passwordController.text));
    response.when(success: (loginResponse) {
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ""));
    });
  }
}
