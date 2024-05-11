import 'package:aquapro/Compo/Container.dart';
import 'package:flutter/material.dart';
import 'package:aquapro/Compo/CardInfo.dart';
import 'package:aquapro/Compo/CodePromoSection.dart';

import 'package:aquapro/Compo/Constance.dart';

class Homm extends StatelessWidget {
  const Homm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Primerycolor,
        elevation: 4,
        title: const Text(
          "AQUAPRP",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(7.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 2),
            const CustomCardInfo(),
            const SizedBox(height: 20),
            const Text(
              "Bonjour Aristoo",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Nous sommes là pour te rendre la vie facile.",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 23),
            Row(
              children: [
                CustomContainer(
                  image: "assets/img/setern.png",
                  text: " 800 litres",
                  tap: () {
                    Navigator.pushNamed(context, 'Gmap');
                  },
                ),
                const SizedBox(width: 8),
                CustomContainer(
                  image: "assets/img/setern.png",
                  text: " 1000 litres",
                  tap: () {
                    Navigator.pushNamed(context, 'Gmap');
                  },
                ),
                const SizedBox(width: 8),
                CustomContainer(
                  image: "assets/img/setern.png",
                  text: " 3000 litres",
                  tap: () {
                    Navigator.pushNamed(context, 'Gmap');
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            CodePromoSection(),
          
          ],
        ),
      ),
    );
  }
}
