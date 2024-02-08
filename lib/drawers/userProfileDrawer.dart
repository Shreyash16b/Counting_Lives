import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '../Constants/constants.dart';
import '../Helper/HelperFunctions.dart';
import '../pages/User/UserProfile.dart';

class UserProfileDrawer extends StatefulWidget {
  const UserProfileDrawer({
    super.key,
  });

  @override
  State<UserProfileDrawer> createState() => _UserProfileDrawerState();
}

class _UserProfileDrawerState extends State<UserProfileDrawer> {
  String name = '';
  Future<String> getName() async {
    final userCreds = await FirebaseFirestore.instance
        .collection('users')
        .doc(await FirebaseAuth.instance.currentUser!.uid)
        .get();
    return userCreds.data()!['name'];
  }

  @override
  void initState() {
    setState(() {
      getName().then((value) {
        name = value;
      });
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Constants.green2, Constants.green1],
            ),
          ),
          child: Column(
            children: [
              Image.asset("assets/images/Sample_User_Icon.png"),
              const SizedBox(
                height: 20,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      ListTile(
                        visualDensity: const VisualDensity(vertical: -4),
                        leading:
                            Image.asset("assets/images/icons8-user-100.png"),
                        title: const Text(
                          "Profile",
                          style: TextStyle(color: Constants.green1),
                        ),
                        onTap: () {
                          nextScreen(context, const UserProfile());
                        },
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ListTile(
                        // leading: Icon(Icons.abc),
                        visualDensity: const VisualDensity(vertical: -4),
                        leading: Image.asset(
                            "assets/images/icons8-calendar-100.png"),
                        title: const Text(
                          "Appointments",
                          style: TextStyle(color: Constants.green1),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ListTile(
                        // leading: Icon(Icons.abc),
                        visualDensity: const VisualDensity(vertical: -4),
                        leading:
                            Image.asset("assets/images/icons8-star-50.png"),
                        title: const Text(
                          "Ratings",
                          style: TextStyle(color: Constants.green1),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ListTile(
                        // leading: Icon(Icons.abc),
                        visualDensity: const VisualDensity(vertical: -4),
                        leading:
                            Image.asset("assets/images/icons8-heart-100.png"),
                        title: const Text(
                          "Favourite",
                          style: TextStyle(color: Constants.green1),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomCenter,
                          child: ListTile(
                            visualDensity: const VisualDensity(vertical: 2),
                            leading: const Icon(
                              Icons.logout,
                              color: Color.fromARGB(255, 0, 212, 170),
                            ),
                            title: const Text(
                              'Logout',
                              style: TextStyle(color: Constants.green1),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
