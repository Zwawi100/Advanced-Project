import 'package:advancedproject/presentation/forget_password/forget_password_view.dart';
import 'package:advancedproject/presentation/login/login_view.dart';
import 'package:advancedproject/presentation/onboarding/onboarding_view.dart';
import 'package:advancedproject/presentation/resources/string_manager.dart';
import 'package:advancedproject/presentation/splash/splash_view.dart';
import 'package:flutter/material.dart';

import '../main/main_view.dart';
import '../register/register_view.dart';
import '../store_details/store_details_view.dart';

class Routes {
  static const String splashRoute = '/';
  static const String onboardingRoute = '/onBoarding';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String forgotPasswordRoute = '/forgotPassword';
  static const String mainRoute = '/main';
  static const String storeDetailsRoute = '/storeDetails';
}

class RoutesGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => SplashView());
      case Routes.onboardingRoute:
        return MaterialPageRoute(builder: (_) => OnboardingView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => RegisterView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => ForgetPasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => MainView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => StoreDetailsView());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(title: Text(AppStrings.noRouteFound)),
              body: Center(child: Text(AppStrings.noRouteFound)),
            ));
  }
}
