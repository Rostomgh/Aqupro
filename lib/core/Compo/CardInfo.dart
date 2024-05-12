import 'package:aquapro/Compo/Trailing.dart';
import 'package:flutter/material.dart';

class CustomCardInfo extends StatelessWidget {
  const CustomCardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 107,
      child: Card(
        color: Color.fromARGB(255, 60, 12, 68),
        child: ListTile(
          title: Text(
            "Aquapro Pay",
            style: TextStyle(color: Colors.white,fontSize: 20),
          ),
          
          subtitle: SizedBox(
            height: 64,
            child: Row(
              children: [
                Icon(Icons.remove_red_eye_sharp, color: Colors.white),
                SizedBox(width: 5),
                Text(
                  "0 DZD",
                  style: TextStyle(color: Colors.white, fontSize: 22),
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
