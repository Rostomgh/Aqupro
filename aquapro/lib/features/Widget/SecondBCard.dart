
import 'package:aquapro/core/Compo/CustomSettings.dart';
import 'package:aquapro/features/Auth/Login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SecondBuildCard extends StatefulWidget {
  const SecondBuildCard({super.key});

  @override
  State<SecondBuildCard> createState() => _SecondBuildCardState();
}

class _SecondBuildCardState extends State<SecondBuildCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomCardProfilePage(
          ic: Icon(Icons.text_decrease),
          text: "Termes et Conditions",
        ),
        CustomCardProfilePage(
            tap: () {
              Navigator.pushNamed(context, 'Historique');
            },
            ic: Icon(Icons.history),
            text: "Historique"),
        const CustomCardProfilePage(
          ic: Icon(Icons.language),
          text: "Langue",
        ),
        CustomCardProfilePage(
          ic: Icon(Icons.exit_to_app),
          tap: () async {
            await FirebaseAuth.instance.signOut();
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => const LoginP()),
              (route) => false,
            );
          },
          text: "Déconnecter",
        ),
        const SizedBox(height: 40),
        const Text(
          "Aquapro . Version 1.0.0",
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
