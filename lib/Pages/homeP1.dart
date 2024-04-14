import 'package:aquapro/Compo/CardInfo.dart';
import 'package:aquapro/Compo/Constance.dart';
import 'package:aquapro/Compo/Container.dart';

import 'package:aquapro/Login/Login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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
              fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const LoginP()),
                (route) => false,
              );
            },
            icon: const Icon(Icons.exit_to_app),
          )
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomCardInfo(),
              const SizedBox(height: 20),
              const Text(
                "Bonjour Aristoo",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 24),
              ),
              const SizedBox(height: 5),
              const Text(
                "Nous sommes la pour te rendre la vie facile . ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              ),
              const SizedBox(height: 23),
              Wrap(
                children: [
                  CustomContainer(
                    image: "assets/img/setern.png",
                    text: "خزان ماء 800 لتر",
                    tap: () {},
                  ),
                const SizedBox(width:  8),
                  
                  CustomContainer(
                    image: "assets/img/setern.png",
                    text: "خزان ماء 1000 لتر",
                    tap: () {},
                  ),
                  const SizedBox(width:  8),
                    CustomContainer(
                    image: "assets/img/setern.png",
                    text: "خزان ماء 3000 لتر",
                    tap: () {},
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
