import 'package:aquapro/Login/Log.dart';
import 'package:aquapro/Login/Login.dart';
import 'package:aquapro/NavBar.dart';
import 'package:aquapro/Pages/Gmap.dart';
import 'package:aquapro/Pages/ProfileScreen/InfoPerso.dart';
import 'package:aquapro/Pages/homeP1.dart';
import 'package:aquapro/Route/ErrorRoute.dart';

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

      default:
        return MaterialPageRoute(builder: (_) => const ErrorRoute());
    }
  }
}
