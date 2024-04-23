// ignore_for_file: body_might_complete_normally_nullable

import 'package:aquapro/Compo/Constance.dart';
import 'package:aquapro/Compo/CustomEditInput.dart';
import 'package:flutter/material.dart';

class InfoPersoP extends StatefulWidget {
  const InfoPersoP({super.key});

  @override
  State<InfoPersoP> createState() => _InfoPersoPState();
}

class _InfoPersoPState extends State<InfoPersoP> {
  final TextEditingController userN = TextEditingController();
  final TextEditingController nom = TextEditingController();
  final TextEditingController date = TextEditingController();
  final TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        centerTitle: true,
        title: const Text(
          "Modifier le profile",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 60,
                    child: Image.asset(
                      "assets/avatar/ProfileAvatar.jpg",
                      width: 170,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  "Information",
                  style: TextStyle(
                    color: Colors.black54,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      decoration: TextDecoration.underline),
                ),
                const SizedBox(
                  height: 20,
                ),
                FInput,
                EditInput(
                  hint: "Aristoo",
                  mycontroller: userN,
                ),
                const SizedBox(height: 10),
                SInput,
                EditInput(
                  hint: "Mohamed",
                  mycontroller: nom,
                ),
                const SizedBox(height: 10),
                DInput,
                EditInput(
                  hint: "13/2/2003",
                  mycontroller: date,
                ),
                const SizedBox(height: 10),
                EInput,
                EditInput(
                  hint: "ros@gmail.com",
                  mycontroller: email,
                ),
              ]),
        ),
      ),
    );
  }
}
