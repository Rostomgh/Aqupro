import 'package:flutter/material.dart';

class CustomCardHistorique extends StatelessWidget {
  final String date;
  final String Prix;

  const CustomCardHistorique({
    Key? key,
    required this.date,
    required this.Prix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: const EdgeInsets.fromLTRB(9, 12, 6, 12),
        height: 100,
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
        child: Column(children: [
          Row(
            children: [
              Text(
                date,
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              ),
              const SizedBox(width: 170),
              Text(
                '$Prix DZD',
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Container(
            height: 2,
            width: 340,
            color: const Color.fromARGB(255, 112, 108, 108),
          ),
          SizedBox(height: 2),
          Text("lieu")

        ]),
      ),
    );
  }
}
