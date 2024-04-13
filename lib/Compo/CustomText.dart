import 'package:aquapro/Compo/Constance.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final TextEditingController mycontroller;
  final String label;
  final bool obc;
  final String? Function(String?)? validator;

  const CustomText(
      {super.key,
      required this.mycontroller,
      required this.label,
      required this.obc, required this.validator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: SizedBox(
        width: 350,
        child: TextFormField(
          validator: validator,
          controller: mycontroller,
          obscureText: obc,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              label: Text(label),
              labelStyle: const TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                  fontSize: 20),
              fillColor: Primerycolor,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide(
                    color: Colors.black,
                  ))),
        ),
      ),
    );
  }
}
