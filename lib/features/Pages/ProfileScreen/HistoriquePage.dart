
import 'package:aquapro/core/Compo/CustomCardHistorique.dart';
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
          title: Text('Historique',  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          centerTitle: true,  
          backgroundColor: Colors.white,
      
        ),
        body: const SafeArea(
          child: SingleChildScrollView(
            child: CustomCardHistorique(Prix:'120' ,date:'11 may 1990' ,),
          ),
        ));
  }
}
