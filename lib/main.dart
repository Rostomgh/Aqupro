import 'dart:io';

import 'package:aquapro/Buissnes%20Logic/NavBar/nav_bar_bloc.dart';
import 'package:aquapro/Buissnes%20Logic/geolocator/localisation_bloc.dart';
import 'package:aquapro/LogoP.dart';

//import 'package:aquapro/Compo/Chekbox.dart';

import 'package:aquapro/core/NavBar.dart';
import 'package:aquapro/core/Router/OnenerateRoute.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:aquapro/Pages/ListTitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: 'AIzaSyASg7XmMHB8nCvbIf0tEWP0eRwTTMypsbg',
              appId: '1:80637747197:android:afbcea98aa02e21e8d8394',
              messagingSenderId: '80637747197',
              projectId: 'aquapro-dd265'))
      : await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('================================User is currently signed out!');
      } else {
        print('================================User is signed in!');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LocalisationBloc>(
          create: (context) => LocalisationBloc(),
        ),
        BlocProvider<NavBarBloc>(
          create: (context) => NavBarBloc(),
        ),
      ],
      child: ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (_, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData.light(useMaterial3: true),
              home: FirebaseAuth.instance.currentUser == null
                  ? const FirstP()
                  : const NavBar(),
              onGenerateRoute: (settings) =>
                  AppRouter().OngenerateRoute(settings),
            );
          }),
    );
  }
}
