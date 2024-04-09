import 'package:flutter/material.dart';

class Trailing extends StatelessWidget {
  const Trailing({super.key});

  @override
  Widget build(BuildContext context) {
    return Container
    (width: 120,
    //height: 40,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(0)
),
      child: MaterialButton(
        
      onPressed: (){},
      child: Row(
        children: [
          Icon(Icons.add,color: Colors.white,),
          SizedBox(width: 5,),
          Text("Souscrire",style: TextStyle(
            color: Colors.white,
            fontSize: 13,
            
          ),)
          
        ],
      
      ),
      color: Color.fromARGB(255, 95, 8, 216),
      
      ),
    );
  }
}