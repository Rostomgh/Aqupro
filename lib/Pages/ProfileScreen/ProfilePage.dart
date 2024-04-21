import 'package:aquapro/Compo/Constance.dart';

import 'package:aquapro/Widget/SecondBCard.dart';

import 'package:aquapro/Widget/FirstBCard.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        leading: CircleAvatar(
          
          child: Image.asset("assets/avatar/ProfileAvatar.jpg"),
        ),
        title: const Column(
          children: [
            Text(
              "Aristoo",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
            SizedBox(height: 2),
            Text(
              "099847652",
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
      
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Tit,
              SizedBox(height: 10),
              FistBuildCard(),
              SizedBox(height:13),
              Tit2,
              SizedBox(height: 10),
              SecondBuildCard(),

            ],
          ),
        ),
      ),
    );
  }
}
