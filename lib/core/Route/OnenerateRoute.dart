

import 'package:aquapro/core/NavBar.dart';
import 'package:aquapro/core/Route/ErrorRoute.dart';
import 'package:aquapro/features/Auth/Log.dart';
import 'package:aquapro/features/Auth/Login.dart';
import 'package:aquapro/features/Pages/Gmap.dart';
import 'package:aquapro/features/Pages/ProfileScreen/HistoriquePage.dart';
import 'package:aquapro/features/Pages/ProfileScreen/InfoPerso.dart';
import 'package:aquapro/features/Pages/ProfileScreen/LanguePage.dart';
import 'package:aquapro/features/Pages/homeP1.dart';
import 'package:aquapro/features/Widget/CustomCreditCard.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? OngenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'Sign In':
        return MaterialPageRoute(builder: (_) => const LoginP());
      case 'Sign Up':
        return MaterialPageRoute(builder: (_) => const SignUp());
      case 'Gmap':
        return MaterialPageRoute(builder: (_) => const Gmap());
      case 'hm':
        return MaterialPageRoute(builder: (_) => const Homm());
      case 'NavBar':
        return MaterialPageRoute(builder: (_) => const NavBar());
      case 'info':
        return MaterialPageRoute(builder: (_) => const InfoPersoP());
      case 'Card':
        return MaterialPageRoute(builder: (_) => const CustomCreditCard());
      case 'Langue':
        return MaterialPageRoute(builder: (_) => const LanguePage());
      case 'Historique':
        return MaterialPageRoute(builder: (_) => const HistoriquePage());

      default:
        return MaterialPageRoute(builder: (_) => const ErrorRoute());
    }
  }
}
