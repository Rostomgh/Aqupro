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
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            child: Image.asset("assets/avatar/av11.png"),
          ),
        ),
        title: const Column(
          children: [
            Text(
              "Aristoo",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
          ],
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Tit,
              SizedBox(height: 10),
              FistBuildCard(),
              SizedBox(height: 19),
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
