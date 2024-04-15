import 'package:aquapro/Compo/CustomSettings.dart';
import 'package:flutter/material.dart';

class SecondBuildCard extends StatefulWidget {
  const SecondBuildCard({super.key});

  @override
  State<SecondBuildCard> createState() => _SecondBuildCardState();
}

class _SecondBuildCardState extends State<SecondBuildCard> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomCardProfilePage(
          ic: Icon(Icons.text_decrease),
          text: "Termes et Conditions",
        ),
        CustomCardProfilePage(
          ic: Icon(Icons.language),
          text: "Languge",
        ),
      ],
    );
  }
}
