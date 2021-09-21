// this class contains all routes names
import 'package:flutter/material.dart';
import 'package:slatable_mobile/modules/auth/view/screens/createAccInfoScreen.dart';
import 'package:slatable_mobile/modules/auth/view/screens/managerInfoScreen.dart';
import 'package:slatable_mobile/modules/auth/view/screens/welcomeScreen.dart';
import 'package:slatable_mobile/modules/home/view/Screens/addLinksForInvitedAuditionFreeVersion.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    PageRouteBuilder pageRouteBuilder(Widget page) {
      return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => page,
          transitionsBuilder: (_, a, __, c) => FadeTransition(
                opacity: a,
                child: c,
              ));
    }

    switch (settings.name) {
      case "/welcomeScreen":
        return pageRouteBuilder(WelcomeScreen());

      case "/addLinksForInvitedAuditionFreeScreen":
        return pageRouteBuilder(AddLinksForInvitedAuditionFreeScreen());
      case "/createAccScreen":
        return pageRouteBuilder(CreateAccInfoScreen());
      case "/managerInfoScreen":
        return pageRouteBuilder(ManagerInfoScreen());
      default:
        return pageRouteBuilder(WelcomeScreen());
    }
  }
}

class Routes {
  static String welcomeScreen = "/welcomeScreen";
  static String addLinksForInvitedAuditionFreeScreen =
      "/addLinksForInvitedAuditionFreeScreen";
  static String createAccScreen = "/createAccScreen";
  static String managerInfoScreen = "/managerInfoScreen";
}
