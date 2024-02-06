import 'package:counting_lives/pages/Hospital/Services/DatabaseService.dart';
import 'package:counting_lives/pages/Hospital/hospitalSignUp3.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../Constants/constants.dart';
import '../../Helper/HelperFunctions.dart';

class HospitalSignUp2 extends StatefulWidget {
  final String hospitalName;
  final String hospitalAddress;
  final String hospitalPhoneNumber;
  final int hospitalPincode;
  final String countryValue;
  final String stateValue;
  final String hospitalEmail;
  final String cityValue;
  const HospitalSignUp2(
      {super.key,
      required this.hospitalName,
      required this.hospitalAddress,
      required this.hospitalPhoneNumber,
      required this.hospitalPincode,
      required this.countryValue,
      required this.stateValue,
      required this.cityValue,
      required this.hospitalEmail});

  @override
  State<HospitalSignUp2> createState() => _HospitalSignUp2State();
}

final _firebase = FirebaseAuth.instance;

class _HospitalSignUp2State extends State<HospitalSignUp2> {
  bool passwordVisible = false;
  String hospitalPassword = '';
  String? hid;
  final formkey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  void _onNext() async {
    bool isValid = formkey.currentState!.validate();
    if (isValid) {
      formkey.currentState!.save();

      try {
        final userCredentials = await _firebase.createUserWithEmailAndPassword(
            email: widget.hospitalEmail, password: hospitalPassword);
        print(userCredentials.user!.uid);
        DatabaseService(userCredentials.user!.uid).addHospitalData(
            widget.hospitalName,
            widget.hospitalAddress,
            widget.hospitalPhoneNumber,
            widget.hospitalPincode,
            widget.countryValue,
            widget.stateValue,
            widget.hospitalEmail,
            widget.cityValue);
        nextScreenReplace(
            context, HospitalSignUp3(hid: userCredentials.user!.uid));
      } on FirebaseAuthException catch (error) {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(error.message ?? "Authentication Failed")));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 40,
          ),
          Image.asset("assets/images/Counting_lives.png"),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Provide your details",
            style: TextStyle(fontSize: 28, color: Colors.white),
          ),
          Container(
            height: 800,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35), topRight: Radius.circular(35)),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 255, 153, 85),
                  Color.fromARGB(255, 255, 85, 153)
                ],
              ),
            ),
            child: Column(children: [
              const SizedBox(
                height: 40,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Government Certificate"),
                    Container(
                      // padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 8,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(5),
                        gradient: const LinearGradient(
                            colors: [Constants.pink1, Constants.pink2],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: const Text(
                          "Upload",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
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
                  child: TextField(
                    obscureText: passwordVisible,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 4),
                      hintText: "Password",
                      labelText: "Enter Password",
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
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
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
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                      hintText: "Password",
                      labelText: "Confirm Password",
                      labelStyle: TextStyle(color: Constants.pink2),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Material(
                borderRadius: BorderRadius.circular(25),
                child: InkWell(
                  borderRadius: BorderRadius.circular(25),
                  onTap: () {
                    _onNext();
                  },
                  child: Container(
                    width: 150,
                    height: 50,
                    alignment: Alignment.center,
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Next",
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
            ]),
          ),
        ]),
      ),
    );
  }
}
