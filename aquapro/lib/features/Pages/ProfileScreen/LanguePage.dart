import 'package:flutter/material.dart';

class LanguePage extends StatefulWidget {
  const LanguePage({super.key});

  @override
  State<LanguePage> createState() => _LanguePageState();
}

class _LanguePageState extends State<LanguePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text("English"),
          Text("Francais"),
          
        ],
      ),
    );
  }
}