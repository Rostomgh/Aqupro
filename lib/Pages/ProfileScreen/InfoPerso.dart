// ignore_for_file: body_might_complete_normally_nullable

import 'package:aquapro/Compo/CustomTextFormField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                  child: Image.asset("assets/avatar/ProfileAvatar.jpg",width: 170,),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                "Information",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              CustomText(
                  label: "Prénom",
                  mycontroller: userN,
                  obc: false,
                  hint: "Aristoo",
                  validator: (val) {
                    if (val == "") {
                      return "can't be empty ";
                    }
                  }),
              const SizedBox(height: 15),
              CustomText(
                  label: "Nom",
                  mycontroller: nom,
                  obc: false,
                  hint: "Mohamed",
                  validator: (val) {
                    if (val == "") {
                      return "can't be empty ";
                    }
                  }),
              const SizedBox(height: 15),
              CustomText(
                  label: "Date de naissance",
                  mycontroller: date,
                  obc: false,
                  hint: "23/01/2001",
                  validator: (val) {
                    if (val == "") {
                      return "can't be empty ";
                    }
                  }),
              const SizedBox(height: 15),
              CustomText(
                  label: "EMAIL",
                  mycontroller: email,
                  obc: false,
                  hint: "ros@gmail.com",
                  validator: (val) {
                    if (val == "") {
                      return "can't be empty ";
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
