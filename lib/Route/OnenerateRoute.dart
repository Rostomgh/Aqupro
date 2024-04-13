import 'package:aquapro/Login/Log.dart';
import 'package:aquapro/Login/Login.dart';
import 'package:aquapro/NavBar.dart';
import 'package:aquapro/Pages/HomeP.dart';
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
      case 'Home':
        return MaterialPageRoute(builder: (_) => HomePage());
      case 'hm':
        return MaterialPageRoute(builder: (_) => Homm());
      case 'NavBar':
        return MaterialPageRoute(builder: (_) => NavBar());

          default:
        return MaterialPageRoute(builder: (_) => ErrorRoute());
    }
  }
}
