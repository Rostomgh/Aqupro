import 'package:flutter/material.dart';

class FCHistoriqque extends StatelessWidget {
  final String date;
  final String Prix;
  const FCHistoriqque({super.key, required this.date, required this.Prix});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Row(
            children: [
              Text(
                date,
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              ),
              const SizedBox(width: 120),
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
        )]);
  }
}
