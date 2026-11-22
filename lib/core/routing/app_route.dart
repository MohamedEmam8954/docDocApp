import 'package:doctorapp/core/routing/routes.dart';
import 'package:doctorapp/features/login/presentation/view/login_view.dart';
import 'package:doctorapp/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:flutter/material.dart';

class AppRoute {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (context) => const OnboardingView());
      case Routes.login:
        return MaterialPageRoute(builder: (context) => const LoginView());
      default:
        return MaterialPageRoute(
          builder: (context) =>
              const Scaffold(body: Center(child: Text('Page Not Found'))),
        );
    }
  }
}
