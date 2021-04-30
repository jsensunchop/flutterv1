import 'package:authwithrest/repositories/repositories.dart';
import 'package:authwithrest/screens/auth/login_form.dart';
import 'package:authwithrest/screens/main_screen/main_screen.dart';
import 'package:authwithrest/screens/register/register_form.dart';
import 'package:flutter/material.dart';
import 'package:authwithrest/routes/routesNames.dart';

class routeGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routesNames.Landing:
        return MaterialPageRoute(builder: (_) => LoginForm());
      case routesNames.Home:
        return MaterialPageRoute(builder: (_) => MainScreen());
      // case routesNames.Register:
      //   return MaterialPageRoute(builder: (_) => RegisterForm());
      case routesNames.Register2:
        return MaterialPageRoute(builder: (_) => RegisterForm());
      // case routesNames.Coupons:
      //   return MaterialPageRoute(builder: (_) => CouponsScreen());
      // case routesNames.ChooseSignUpType:
      //   return MaterialPageRoute(builder: (_) => ChooseSignUpType());

    // case RoutesNames.Splash:
    //   return MaterialPageRoute(builder: (_) => AppSplash());
    // case RoutesNames.Password:
    //   return MaterialPageRoute(builder: (_) => PasswordScreen());
    // case RoutesNames.ProfileLanding:
    //   return MaterialPageRoute(builder: (_) => ProfileLanding());
    // case RoutesNames.CreateOffer:
    //   return MaterialPageRoute(builder: (_) => WhereOffer());
    // case RoutesNames.CheckOffers:
    //   return MaterialPageRoute(builder: (_) => CheckOffers());
    // case RoutesNames.OfferData:
    //   return MaterialPageRoute(builder: (_) => OfferData());
    // case RoutesNames.OfferDocuments:
    //   return MaterialPageRoute(builder: (_) => OfferDocuments());
    // case RoutesNames.OfferSpecialty:
    //   return MaterialPageRoute(builder: (_) => OfferSpecialty());
    // case RoutesNames.OfferSubSpecialty:
    //   return MaterialPageRoute(builder: (_) => OfferSubSpecialty());
    // case RoutesNames.OfferSended:
    //   return MaterialPageRoute(builder: (_) => OfferSended());
    // case RoutesNames.NewPassword:
    //   return MaterialPageRoute(builder: (_) => NewPassword());
    // case RoutesNames.ChooseSignUpType:
    //   return MaterialPageRoute(builder: (_) => ChooseSignUpType());
    // case RoutesNames.CodeScreen:
    //   return MaterialPageRoute(builder: (_) => CodeScreen());
    // case RoutesNames.PersonScreen:
    //   return MaterialPageRoute(builder: (_) => PersonScreen());
    // case RoutesNames.TermsScreen:
    //   return MaterialPageRoute(builder: (_) => TermsScreen());
    // case RoutesNames.CompanyScreen:
    //   return MaterialPageRoute(builder: (_) => CompanyScreen());
    // case RoutesNames.EmployeeScreen:
    //   return MaterialPageRoute(builder: (_) => EmployeeScreen());
    // case RoutesNames.SignUpPassword:
    //   return MaterialPageRoute(builder: (_) => SignUpPassword());
    // case RoutesNames.LookUpOffers:
    //   return MaterialPageRoute(builder: (_) => LookUpOffers());
    // case RoutesNames.LookUpWorkers:
    //   return MaterialPageRoute(builder: (_) => LookUpWorkers());
    // case RoutesNames.LookUpAcceptedWorkers:
    //   return MaterialPageRoute(builder: (_) => LookUpAcceptedWorkers());
    // case RoutesNames.ChengePassword:
    //   return MaterialPageRoute(builder: (_) => ChengePassword());
    // case RoutesNames.FavoriteWorkers:
    //   return MaterialPageRoute(builder: (_) => FavoriteWorkers());
    // case RoutesNames.EditCel:
    //   return MaterialPageRoute(builder: (_) => EditCel());
    }
  }
}