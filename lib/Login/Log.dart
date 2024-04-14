import 'package:aquapro/Compo/Constance.dart';
import 'package:aquapro/Compo/CustomButton.dart';
import 'package:aquapro/Compo/CustomText.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpPState();
}

class _SignUpPState extends State<SignUp> {
  TextEditingController email = TextEditingController();
  TextEditingController userN = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController cpassword = TextEditingController();
  TextEditingController number = TextEditingController();
  GlobalKey<FormState> forms = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Primerycolor,
      body: Form(
        key: forms,
        child: ListView(
          children: [
            Column(
              children: [
                const SizedBox(height: 50),
                const Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Signup in your account',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 40),
                CustomText(
                  label: "Email",
                  obc: false,
                  mycontroller: email,
                  validator: (val) {
                    if (val == "") {
                      return "can't to be empty";
                    }
                    return null;
                  },
                ),
                CustomText(
                  label: "User Name",
                  obc: false,
                  mycontroller: userN,
                  validator: (val) {
                    if (val == "") {
                      return "can't to be empty";
                    }
                    return null;
                  },
                ),
                CustomText(
                  label: "Password",
                  obc: true,
                  mycontroller: password,
                  validator: (val) {
                    if (val == "") {
                      return "can't to be empty";
                    }
                    return null;
                  },
                ),
                CustomText(
                  label: "Confirme Password",
                  obc: true,
                  mycontroller: cpassword,
                  validator: (val) {
                    if (val == "") {
                      return "can't to be empty";
                    }
                    return null;
                  },
                ),
                CustomText(
                  label: "Number",
                  obc: false,
                  mycontroller: number,
                  validator: (val) {
                    if (val == "") {
                      return "can't to be empty";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomButton(
                  onPressed: () async {
                    if (forms.currentState!.validate()) {
                      try {
                        final credential =
                            await FirebaseAuth.instance.createUserWithEmailAndPassword(
                          email: email.text,
                          password: password.text,
                        );
                        Navigator.pushReplacementNamed(context, 'Sign In');
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          print('The password provided is too weak.');
                          AwesomeDialog(
                              context: context,
                              dialogType: DialogType.error,
                              animType: AnimType.rightSlide,
                              title: 'Error',
                              desc: 'The password provided is too weak.',
                            ).show();
                        } else if (e.code == 'email-already-in-use') {
                          print('The account already exists for that email.');
                          AwesomeDialog(
                              context: context,
                              dialogType: DialogType.error,
                              animType: AnimType.rightSlide,
                              title: 'Error',
                              desc: 'The account already exists for that email.',
                            ).show();
                        }
                      } catch (e) {
                        print(e);
                      }
                    } else {
                      print("Not valid");
                    }
                  },
                  text: "Create",
                  gradientColors: ButtonColor,
                ),
                const SizedBox(height: 40),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, 'Sign In');
                  },
                  child: const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Have an account? ',
                          style: TextStyle(fontSize: 18),
                        ),
                        TextSpan(
                          text: "Sign in",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
