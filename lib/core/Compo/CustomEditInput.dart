import 'package:flutter/material.dart';


class EditInput extends StatelessWidget {
  final String hint;
  final TextEditingController mycontroller;
  const EditInput({Key? key, required this.mycontroller, required this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: SizedBox(
        width: 350,
        child: TextFormField(
          controller: mycontroller,
          obscureText: false,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
            contentPadding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            hintText: hint,
            hintStyle: const TextStyle(fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.black
            ),
            border:const  OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black
              )

            )
          ),
          
        ),
      ),
    );
  }
}
