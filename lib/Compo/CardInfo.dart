import 'package:aquapro/Compo/Trailing.dart';
import 'package:flutter/material.dart';

class CustomCardInfo extends StatelessWidget {
  const CustomCardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Card(
        color: Color.fromARGB(255, 35, 2, 41),
        child: ListTile(
          title: Text(
            "Aquapro Pay",
            style: TextStyle(color: Colors.white,fontSize: 17),
          ),
          
          subtitle: SizedBox(
            height: 50,
            child: Row(
              children: [
                Icon(Icons.remove_red_eye_sharp, color: Colors.white),
                SizedBox(width: 5),
                Text(
                  "0 DZD",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          
          trailing: Trailing(),
        ),
      ),
    );
  }
}
