import 'package:doctor_app/core/di/dependency_injection.dart';
import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/doctor_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
    //! to fix texts being hidden bug in flutter_screenUtils in release mode
 await ScreenUtil.ensureScreenSize();
  setupGetit();
  runApp( DoctorApp(appRouter: AppRouter(),));
}