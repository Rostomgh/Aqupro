import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:aquapro/Login/Login.dart';



//import 'package:aquapro/Login/Signup.dart';
import 'package:flutter/material.dart';

class FirstP extends StatelessWidget {
  const FirstP({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              child: AnimatedSplashScreen(
                splashTransition: SplashTransition.fadeTransition,
                splash: Image.asset(
                  'assets/img/logox.jpg',
                  width: 800,
                  height: 800,
                ),
                
                nextScreen: const  LoginP(),
              ),
            ),
            SizedBox(height: 2),
            const Text(
              'Aquapro',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            )
          ],
        ),
      ),
    );
  }
}
