// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

String tit = '';
const CardColor = Color.fromARGB(0, 32, 2, 37);
const Primerycolor = Color.fromARGB(255, 112, 180, 236);
const Butcolor = Color(0xFFBDBDBD);
const SizeText = SizedBox(height: 5);
const ButtonColor = [Colors.black54, Colors.black];

const Tit = Column(
  
  children: [
    Text(
      "Mon Compte",
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          ),
    ),
  ],
);
const Tit2 = Text(
  "Plus d'options",
  style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      ),
);
const FInput = Padding(
  padding: EdgeInsets.all(8.0),
  child: Text(
    "Prénom",
    style: TextStyle(
        fontWeight: FontWeight.w800, fontSize: 17, color: Colors.black),
  ),
);
const SInput = Padding(
  padding: EdgeInsets.all(8.0),
  child: Text(
    "Nom",
    style: TextStyle(
        fontWeight: FontWeight.w800, fontSize: 17, color: Colors.black),
  ),
);
const DInput = Padding(
  padding: EdgeInsets.all(8.0),
  child: Text(
    "Date de naissance",
    style: TextStyle(
        fontWeight: FontWeight.w800, fontSize: 17, color: Colors.black),
  ),
);
const EInput = Padding(
  padding: EdgeInsets.all(8.0),
  child: Text(
    "Email",
    style: TextStyle(
        fontWeight: FontWeight.w800, fontSize: 17, color: Colors.black),
  ),
);
