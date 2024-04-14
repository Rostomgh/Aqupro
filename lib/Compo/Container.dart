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
        height:300,
        width:double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(115, 65, 60, 60),
          ),
          borderRadius: BorderRadius.circular(5),
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
        child: Column(
          children: [
            Image.asset(image),
            const SizedBox(height: 9),
            Text(text, textDirection: TextDirection.rtl,style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
