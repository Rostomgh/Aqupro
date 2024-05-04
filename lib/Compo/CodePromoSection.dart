import 'package:flutter/material.dart';

class CodePromoSection extends StatelessWidget {
  const CodePromoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "Nos offres",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 24,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "En utilisant le code promo sur le service Aquapro",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          ),
          SizedBox(height: 20),
          Image.asset('assets/Code/Promo5.png',width: 200,), 
        ],
      ),
    );
  }
}
