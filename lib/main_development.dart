import 'package:doctor_app/core/di/dependency_injection.dart';
import 'package:doctor_app/core/helpers/constants.dart';
import 'package:doctor_app/core/helpers/extension.dart';
import 'package:doctor_app/core/helpers/sheard_pref_helper.dart';
import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/doctor_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main() async {
   setupGetit();
  WidgetsFlutterBinding.ensureInitialized();
  //! to fix texts being hidden bug in flutter_screenUtils in release mode
  await ScreenUtil.ensureScreenSize();
 
  await CheckIfLoggedInUser();
  runApp(DoctorApp(
    appRouter: AppRouter(),
  ));
}

CheckIfLoggedInUser() async {
  String? userToken =
      await SharedPreferencesHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
