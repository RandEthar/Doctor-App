import 'package:bloc/bloc.dart';
import 'package:doctor_app/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:doctor_app/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:doctor_app/features/sign_up/logic/cubit/sign_up_state.dart';
import 'package:flutter/material.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this._signUpRepo) : super(SignUpState.initial());
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final SignUpRepo _signUpRepo;
  TextEditingController phoneController = TextEditingController();
   final   GlobalKey<FormState>formKey=GlobalKey<FormState>();
   Future<void>  emitSignUpState() async{

    emit(SignUpState.signupLoading());
  
     final response=await _signUpRepo.signUp(SignUpRequestBody(name:nameController.text,
       email:emailController.text, password: passwordController.text, 
       passwordConfirmation:passwordConfirmationController.text, 
       phone:phoneController.text, gender: 0));
           response.when(success: (signupResponse) {
      emit(SignUpState.signupSuccess(signupResponse));
    }, failure: (error) {
      emit(SignUpState.signupError(error));
    });
  }
   }




