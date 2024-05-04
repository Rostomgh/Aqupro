import 'package:aquapro/Compo/Constance.dart';
import 'package:aquapro/Compo/CustomCardHistorique.dart';
import 'package:flutter/material.dart';

class HistoriquePage extends StatefulWidget {
  const HistoriquePage({super.key});

  @override
  State<HistoriquePage> createState() => _HistoriquePageState();
}

class _HistoriquePageState extends State<HistoriquePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 239, 236, 236),
        appBar: AppBar(
          title: Text('HISQTORIQUE'),
          centerTitle: true,
          elevation: 5,
          backgroundColor: Primerycolor,
        ),
        body: const SafeArea(
          child: SingleChildScrollView(
            child: CustomCardHistorique(),
          ),
        ));
  }
}
