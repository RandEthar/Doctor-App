import 'package:doctor_app/core/networking/api_error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;
  
  const factory LoginState.loginloading() = LoginLoading;
  const factory LoginState.loginsuccess(T data) = LoginSuccess<T>;
  const factory LoginState.loginerror(ApiErrorModel apiErrorModel) = LoginError;
}