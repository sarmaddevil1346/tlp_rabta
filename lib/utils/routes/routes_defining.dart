import 'package:flutter/material.dart';
import 'package:tlp_rabta/screens/authentication_screen/login_screen/login_screen.dart';
import 'package:tlp_rabta/screens/profile_status/add_education/add_education_details.dart';
import 'package:tlp_rabta/screens/profile_status/political_affiliation_info/political_affiliaiton_info.dart';
import 'package:tlp_rabta/screens/profile_status/professional_info/professional_info_screen.dart';
import 'package:tlp_rabta/screens/splash_screen/splash_screen.dart';
import 'package:tlp_rabta/utils/default_text.dart';
import 'package:tlp_rabta/utils/routes/routes_names.dart';

class RoutesDefining {
  static Route<dynamic> routesDefining(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RoutesNames.splashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case RoutesNames.loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LogInScreen(),
        );
      case RoutesNames.addEducationScreen:
        return MaterialPageRoute(
          builder: (context) => const AddEducationDetails(),
        );
      case RoutesNames.professionalInfoScreen:
        return MaterialPageRoute(
          builder: (context) => const ProfessionalInfo(),
        );
      case RoutesNames.politicalInfoScreen:
        return MaterialPageRoute(
          builder: (context) => const PoliticalInfo(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: DefaultText(
                text: "No Routing Found....",
                fontWeight: FontWeight.w700,
                fontSize: 22,
              ),
            ),
          ),
        );
    }
  }
}
