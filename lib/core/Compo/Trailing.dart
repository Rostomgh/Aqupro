import 'package:aquapro/core/Compo/Constance.dart';
import 'package:flutter/material.dart';

class Trailing extends StatelessWidget {
  const Trailing({super.key});

  @override
  Widget build(BuildContext context) {
    return Container
    (width: 140,
    height: 40,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10)
),
      child: MaterialButton(
        
      onPressed: (){},
<<<<<<<< HEAD:aquapro/lib/core/Compo/Trailing.dart
      color: Color.fromARGB(255, 14, 97, 198),
========
      color: Color.fromARGB(255, 94, 26, 189),
>>>>>>>> d2343d4acb6ee4b988b9e5e4a2df0a4aa6f03288:lib/core/Compo/Trailing.dart
      child: const Row(
        children: [
          Icon(Icons.add,color: Colors.white,size: 25,),
          SizedBox(width: 5,),
          Text("Souscrire",style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            
          ),)
          
        ],
      
      ),
      
      ),
    );
  }
}