import 'dart:io';

import 'package:aquapro/Buissnes%20Logic/ChekBox_Bloc/chek_box_bloc.dart';
import 'package:aquapro/Buissnes%20Logic/NavBar/nav_bar_bloc.dart';
import 'package:aquapro/Login/Login.dart';
import 'package:aquapro/LogoP.dart';
import 'package:aquapro/NavBar.dart';
//import 'package:aquapro/Compo/Chekbox.dart';
import 'package:aquapro/Pages/HomeP.dart';
import 'package:aquapro/Pages/homeP1.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:aquapro/Pages/ListTitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './Login/Log.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid? await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyASg7XmMHB8nCvbIf0tEWP0eRwTTMypsbg',
      appId: '1:80637747197:android:afbcea98aa02e21e8d8394',
      messagingSenderId: '80637747197', 
      projectId: 'aquapro-dd265'
      )


  )  : await Firebase.initializeApp();
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

  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true),
        home:FirebaseAuth.instance.currentUser==null?  FirstP():Homm(),
        routes: {
          'Sign In': (context) =>const LoginP (),
          'Sign Up': (context) => const SignUp(),
          'Home': (context) => const HomePage(),
          'hm':(context)=>const Homm(),
          'NavBar':(context)=>const NavBar()
          //  'ChekBox':(context)=>const ChekBoxPage(),
          //  'List':(context)=>const ListTitlePage(),
        },
      ),
    );
  }
}
