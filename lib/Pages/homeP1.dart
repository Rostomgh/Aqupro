import 'package:aquapro/Compo/Constance.dart';
import 'package:aquapro/Compo/Container.dart';
import 'package:aquapro/Compo/Trailing.dart';
import 'package:aquapro/Login/Login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Homm extends StatefulWidget {
  const Homm({Key? key}) : super(key: key);

  @override
  State<Homm> createState() => _HommState();
}

class _HommState extends State<Homm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Primerycolor,
        elevation: 4,
        title: const Text(
          "AQUAPRP",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const LoginP()),
                (route) => false,
              );
            },
            icon: const Icon(Icons.exit_to_app),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 100,
                  child: Card(
                    color: Color.fromARGB(255, 35, 2, 41),
                    child: ListTile(
                      title: Text(
                        "Aquapro Pay",
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Row(
                        children: [
                          Icon(Icons.remove_red_eye_sharp, color: Colors.white),
                          SizedBox(width: 4),
                          Text(
                            "0 DZD",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                      trailing: Trailing(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Bonjour Aristoo",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 24),
                ),
                const SizedBox(height: 5),
                const Text(
                  "Nous sommes la pour te rendre la vie facile . ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
                const SizedBox(height: 20),
                Wrap(
                  spacing: 20,
                  children: [
                    const CustomContainer(
                      text: "خزان ماء 800 لتر",
                      image: "assets/img/setern.png",
                    ),
                    const CustomContainer(
                      text: "خزان ماء 1000 لتر",
                      image: "assets/img/setern.png",
                    ),
                    CustomContainer(
                        text: "خاص بالمزارع",
                        image: "assets/img/Irrigation.jpg",
                        tap: () {
                          Navigator.pushNamed(context, 'NavBar');
                        }),
                  ],
                )
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
