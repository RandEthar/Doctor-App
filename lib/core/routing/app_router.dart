import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/features/login/login_screen.dart';
import 'package:doctor_app/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
 static Route generateRoute(RouteSettings settings){    

    switch (settings.name) {
      case Routes.onBoardingScreen:
          return MaterialPageRoute(builder: (_)=>const OnboardingScreen());
     case Routes.loginScreen:
          return MaterialPageRoute(builder: (_)=>const LoginScreen());
      default:  return  MaterialPageRoute(builder: (_)=>Scaffold(
        body: Center(child: Text("No Route Defined for ${settings.name}")),
      ));
    }



  }




















}