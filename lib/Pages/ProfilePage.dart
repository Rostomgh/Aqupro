import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        title:  const Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("Aristo",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            SizedBox(height: 2),
            Text("099847652"),
            
            
            

          ],
        ),
      ),
    );
  }
}