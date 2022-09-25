import 'package:flutter/material.dart';

import './strings_manager.dart';

class Routes {
  static const splashRoute = '/';
  static const loginRoute = '/login';
  static const registerRoute = '/register';
  static const forgotPasswordRoute = '/forgotPassword';
  static const mainViewRoute = '/mainView';
  static const onboardingRoute = '/onboarding';
  static const storeDetailsRoute = '/storeDetails';
}

class RoutesGenerator {
  // static Route<dynamic> getRoute(RouteSettings routeSettings) {
  //   // switch (routeSettings.name) {
  //   //   case Routes.splashRoute:
  //   //     return MaterialPageRoute(
  //   //       builder: (_) => const SplashView(),
  //   //     );
  //   //   case Routes.loginRoute:
  //   //     return MaterialPageRoute(
  //   //       builder: (_) => const LoginView(),
  //   //     );
  //   //   case Routes.registerRoute:
  //   //     return MaterialPageRoute(
  //   //       builder: (_) => const RegisterView(),
  //   //     );
  //   //   case Routes.forgotPasswordRoute:
  //   //     return MaterialPageRoute(
  //   //       builder: (_) => const ForgotPasswordView(),
  //   //     );
  //   //   case Routes.mainViewRoute:
  //   //     return MaterialPageRoute(
  //   //       builder: (_) => const MainView(),
  //   //     );
  //   //   case Routes.onboardingRoute:
  //   //     return MaterialPageRoute(
  //   //       builder: (_) => const OnBoarding(),
  //   //     );
  //   //   case Routes.storeDetailsRoute:
  //   //     return MaterialPageRoute(
  //   //       builder: (_) => const StoreDetailsView(),
  //   //     );
  //   //   default:
  //   //     return unDefinedRoute();
  //   }
  // }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noRouteFound),
        ),
        body: const Center(
          child: Text(AppStrings.noRouteFound),
        ),
      ),
    );
  }
}
