import 'package:flutter/material.dart';

class CustomCardProfilePage extends StatelessWidget {
  final Icon ic;
  final String text;
  final void Function()? tap;
  const CustomCardProfilePage({Key? key, required this.ic, required this.text, this.tap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: tap,
        title: Text(
          text,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        leading: ic,
        trailing: const Icon(Icons.arrow_right_sharp),
      ),
    );
  }
}
