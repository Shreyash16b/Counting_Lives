import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../Constants/constants.dart';
import '../../Helper/HelperFunctions.dart';
import '../../drawers/userProfileDrawer.dart';
import 'UserEditProfile.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  String? name;
  String? number;
  int? weight;
  int? age;
  int? height;
  String? email;
  Future<String> getName() async {
    final userCreds = await FirebaseFirestore.instance
        .collection('users')
        .doc(await FirebaseAuth.instance.currentUser!.uid)
        .get();
    return userCreds.data()!['name'];
  }

  Future<String> getNumber() async {
    final userCreds = await FirebaseFirestore.instance
        .collection('users')
        .doc(await FirebaseAuth.instance.currentUser!.uid)
        .get();
    return userCreds.data()!['phoneNumber'];
  }

  Future<String> getEmail() async {
    final userCreds = await FirebaseFirestore.instance
        .collection('users')
        .doc(await FirebaseAuth.instance.currentUser!.uid)
        .get();
    return userCreds.data()!['email'];
  }

  Future<int> getAge() async {
    final userCreds = await FirebaseFirestore.instance
        .collection('users')
        .doc(await FirebaseAuth.instance.currentUser!.uid)
        .get();
    return userCreds.data()!['age'];
  }

  Future<int> getWeight() async {
    final userCreds = await FirebaseFirestore.instance
        .collection('users')
        .doc(await FirebaseAuth.instance.currentUser!.uid)
        .get();
    return userCreds.data()!['weight'];
  }

  Future<int> getHeight() async {
    final userCreds = await FirebaseFirestore.instance
        .collection('users')
        .doc(await FirebaseAuth.instance.currentUser!.uid)
        .get();
    return userCreds.data()!['height'];
  }

  @override
  void initState() {
    getAge().then((value) {
      setState(() {
        age = value;
      });
    });

    getName().then((value) {
      setState(() {
        name = value;
      });
    });
    getNumber().then((value) {
      setState(() {
        number = value;
      });
    });
    getEmail().then((value) {
      setState(() {
        email = value;
      });
    });
    getHeight().then((value) {
      setState(() {
        height = value;
      });
    });
    getWeight().then((value) {
      setState(() {
        weight = value;
      });
    });
    //TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const UserProfileDrawer(),
      body: Material(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(0.0, 4.0),
                  )
                ],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                gradient: LinearGradient(
                    colors: [Constants.pink1, Constants.pink2],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
              ),
              padding: const EdgeInsets.all(45),
              child: Column(
                children: [
                  const Image(
                    image: AssetImage("assets/images/UserPlaceholder.jpg"),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 80,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/images/age.png"),
                            const Text("AGE"),
                            Text(age.toString()),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 80,
                        width: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/images/height.png"),
                            const Text("HEIGHT"),
                            Text(height.toString()),
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/images/weight.png"),
                            const Text("WEIGHT"),
                            Text(weight.toString())
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    email!,
                    style:
                        const TextStyle(fontSize: 20, color: Constants.green1),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Email",
                    style: TextStyle(color: Colors.black54),
                  ),
                  const Divider(
                    thickness: 1.2,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    number!,
                    style:
                        const TextStyle(fontSize: 20, color: Constants.green1),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Phone No.",
                    style: TextStyle(color: Colors.black54),
                  ),
                  const Divider(
                    thickness: 1.2,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: const LinearGradient(
                          colors: [Constants.green2, Constants.green1],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                          nextScreen(
                              context,
                              UserEditProfile(
                                userEmail: email!,
                                weight: weight!,
                                height: height!,
                                userName: name!,
                              ));
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Edit Profile",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
