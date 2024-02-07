import 'package:counting_lives/pages/Hospital/hospitalSignUp1.dart';
import 'package:counting_lives/pages/Hospital/hospitalUpcomingAppointment.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../Constants/constants.dart';
import '../../Helper/HelperFunctions.dart';

class HospitalLogin extends StatefulWidget {
  const HospitalLogin({super.key});

  @override
  State<HospitalLogin> createState() => _HospitalLoginState();
}

final _firebase = FirebaseAuth.instance;

class _HospitalLoginState extends State<HospitalLogin> {
  bool passwordVisible = false;
  String hospitalPassword = "";
  String hospitalEmail = "";
  final formkey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  void _onSubmit() async {
    bool isValid = formkey.currentState!.validate();
    if (isValid) {
      formkey.currentState!.save();

      try {
        final userCredentials = await _firebase.createUserWithEmailAndPassword(
            email: hospitalEmail, password: hospitalPassword);
        print(userCredentials.user!.uid);
      } on FirebaseAuthException catch (error) {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(error.message ?? "Authentication Failed")));
      }
      nextScreenReplace(context, HospitalSignUp1());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Image.asset(
              "assets/images/Counting_lives.png",
              fit: BoxFit.fitWidth,
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              height: 700,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35)),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 255, 153, 85),
                    Color.fromARGB(255, 255, 85, 153)
                  ],
                ),
              ),
              child: Form(
                key: formkey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    const Text(
                      "LOGIN AS HOSPITAL",
                      style: TextStyle(color: Colors.white, fontSize: 28),
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: SizedBox(
                        width: 300,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 4),
                              hintText: "Enter your email id/phone number",
                              labelText: "Email ID/ Phone Number",
                              labelStyle: TextStyle(color: Constants.pink2),
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(174, 51, 51, 51),
                                  fontWeight: FontWeight.w200)),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Username cannot be empty";
                            } else if (value.length < 4) {
                              return "Username must be at least 4 characters long";
                            }
                            return null;
                          },
                          onSaved: (newValue) {
                            hospitalEmail = newValue!;
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: SizedBox(
                        width: 300,
                        child: TextFormField(
                          onSaved: (newValue) {
                            hospitalPassword = newValue!;
                          },
                          obscureText: passwordVisible,

                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 4),
                            hintText: "Password",
                            labelText: "Password",
                            labelStyle: const TextStyle(color: Constants.pink2),
                            suffixIcon: IconButton(
                              icon: Icon(passwordVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                setState(
                                  () {
                                    passwordVisible = !passwordVisible;
                                  },
                                );
                              },
                            ),
                            // alignLabelWithHint: false,
                            // filled: true,
                          ),
                          // keyboardType: TextInputType.visiblePassword,
                          // textInputAction: TextInputAction.done,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(25),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(25),
                        onTap: () async {
                          if (formkey.currentState!.validate()) {
                            formkey.currentState!.save();
                            final userCredentials = await _firebase.signInWithEmailAndPassword(
                                email: hospitalEmail,
                                password: hospitalPassword);
                            nextScreen(
                                context,
                                HospitalUpcomingAppointments(
                                    upcomingAppointments: 3,
                                    hospitalId: userCredentials.user!.uid));
                          }
                        },
                        child: Container(
                          width: 150,
                          height: 50,
                          alignment: Alignment.center,
                          child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Login",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(175, 255, 85, 85)),
                                ),
                                Icon(Icons.arrow_forward_outlined,
                                    color: Color.fromARGB(175, 255, 85, 85))
                              ]),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () {
                          nextScreen(context, const HospitalSignUp1());
                        },
                        child: Container(
                          width: 200,
                          height: 60,
                          alignment: Alignment.center,
                          child: const Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "New Member? \nSign Up",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(175, 255, 85, 85)),
                                ),
                                Icon(Icons.arrow_forward_outlined,
                                    color: Color.fromARGB(175, 255, 85, 85))
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
