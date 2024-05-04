import 'package:aquapro/Widget/FCardHist.dart';
import 'package:flutter/material.dart';

class CustomCardHistorique extends StatelessWidget {


  const CustomCardHistorique({Key? key, })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: const EdgeInsets.fromLTRB(9, 12, 6, 12),
        height: 135,
        width: 370,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5, 
              blurRadius: 7, 
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: const Column(
          children: [
            FCHistoriqque(date: '11 Aout 2023 14:50' ,Prix: 'hellooo',),
            

          ],    
        ),
      ), 
    );
  }
}
