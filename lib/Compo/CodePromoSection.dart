import 'package:flutter/material.dart';

class CodePromoSection extends StatelessWidget {
  const CodePromoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const Text(
          "Nos offres",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          "En utilisant le code promo sur le service Aquapro",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
        const SizedBox(height: 20),
        Image.asset(
          'assets/Code/Promo5.jpg',
        
        ),
      ],
    );
  }
}
