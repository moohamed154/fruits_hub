import 'package:flutter/material.dart';
import 'package:fruits_hub/features/auth/presentation/views/signin_view.dart';
import 'package:fruits_hub/features/auth/presentation/views/signup_view.dart';
import 'package:fruits_hub/features/best_selling_fruits/views/best_selling_view.dart';
import 'package:fruits_hub/features/home/presentation/views/home_view.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruits_hub/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => const SplashView());
    case BestSellingView.routeName:
      return MaterialPageRoute(builder: (_) => const BestSellingView());
    case HomeView.routeName:
      return MaterialPageRoute(builder: (_) => const HomeView());
    case SigninView.routeName:
      return MaterialPageRoute(builder: (_) => const SigninView());
    case SignupView.routeName:
      return MaterialPageRoute(builder: (_) => const SignupView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (_) => const OnBoardingView());
    default:
      return MaterialPageRoute(builder: (_) => const SplashView());
  }
}
