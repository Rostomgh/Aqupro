import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key, required this.text, required this.image, this.tap});

  final String text;
  final String image;
  final void Function()? tap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:tap ,
      child: Container(
        height: 155,
        width: 108,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(115, 65, 60, 60),
          ),
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Image.asset(image),
            SizedBox(height: 9),
            Text(text, textDirection: TextDirection.rtl),
          ],
        ),
      ),
    );
  }
}
