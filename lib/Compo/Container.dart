import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key,  required this.text, required this.image, this.tap});

  final String text;
  final String image;
  final void Function()? tap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:tap ,
      child: Container(
        height:160,
        width:120,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(7),
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
        child: Column(
          children: [
            Image.asset(image),
            const SizedBox(height: 9),
            Text(text, textDirection: TextDirection.rtl,),
          ],
        ),
      ),
    );
  }
}
