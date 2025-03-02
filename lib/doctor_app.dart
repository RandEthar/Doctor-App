import 'package:doctor_app/core/helpers/constants.dart';
import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorApp extends StatelessWidget {
  final AppRouter appRouter;
  const DoctorApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      useInheritedMediaQuery: true, 
      minTextAdapt: true, 
      builder: (context, child) { 
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Doctor App',
          theme: ThemeData(
            primaryColor: ColorsManeger.mainBlue,
            scaffoldBackgroundColor: Colors.white,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          initialRoute: isLoggedInUser ? Routes.homeScreen    :Routes.loginScreen,
          onGenerateRoute: AppRouter.generateRoute,
        );
      },
    );
  }
}
