
import 'package:aquapro/core/Compo/CustomSettings.dart';
import 'package:flutter/material.dart';

class FistBuildCard extends StatefulWidget {
  const FistBuildCard({super.key});

  @override
  State<FistBuildCard> createState() => _FistBuildCardState();
}

class _FistBuildCardState extends State<FistBuildCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCardProfilePage(
          ic: const Icon(Icons.account_box_outlined),
          text: "Mes Données personnelles",
          tap: () {
            Navigator.pushNamed(context, 'info');
          },
        ),
        const CustomCardProfilePage(
          ic: Icon(Icons.diamond),
          text: "Aquapro Fidélité",
        ),
        CustomCardProfilePage(
          ic: const Icon(Icons.card_travel),
          text: "Méthodes de paiement ",
          tap: () {
            Navigator.pushNamed(context, 'Card');
          },
        ),
      ],
    );
  }
}
