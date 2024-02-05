import 'package:counting_lives_shreyash/drawers/userProfileDrawer.dart';
import 'package:flutter/material.dart';

import '../../Constants/Constants.dart';

class UserSettings extends StatefulWidget {
  final String userName;
  final String userEmail;
  const UserSettings(
      {super.key, required this.userName, required this.userEmail});

  @override
  State<UserSettings> createState() => _UserSettingsState();
}

class _UserSettingsState extends State<UserSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Constants.green2, Constants.green1],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
        ),
        title: const Text("Profile Settings"),
      ),
      drawer: const UserProfileDrawer(userName: "userName"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 35, right: 35),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Name",
            style: TextStyle(color: Constants.green1, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(0.0, 4.0),
                  )
                ],
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5),
                color: Colors.white),
            child: TextFormField(
              initialValue: widget.userName,
              style: const TextStyle(fontSize: 20),
              decoration: const InputDecoration(
                  isDense: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12))),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Email",
            style: TextStyle(color: Constants.green1, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(0.0, 4.0),
                  )
                ],
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5),
                color: Colors.white),
            child: TextFormField(
              initialValue: widget.userEmail,
              style: const TextStyle(fontSize: 20),
              decoration: const InputDecoration(
                  isDense: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12))),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Old Password",
            style: TextStyle(color: Constants.green1, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(0.0, 4.0),
                  )
                ],
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5),
                color: Colors.white),
            child: TextFormField(
              style: const TextStyle(fontSize: 20),
              decoration: const InputDecoration(
                  hintText: "Enter old Password",
                  hintStyle: TextStyle(
                      color: Colors.black12, fontWeight: FontWeight.w200),
                  isDense: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12))),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "New Password",
            style: TextStyle(color: Constants.green1, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(0.0, 4.0),
                  )
                ],
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5),
                color: Colors.white),
            child: TextFormField(
              style: const TextStyle(fontSize: 20),
              decoration: const InputDecoration(
                  hintText: "Enter new Password",
                  hintStyle: TextStyle(
                      color: Colors.black12, fontWeight: FontWeight.w200),
                  isDense: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12))),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "New Password",
            style: TextStyle(color: Constants.green1, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(0.0, 4.0),
                  )
                ],
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5),
                color: Colors.white),
            child: TextFormField(
              style: const TextStyle(fontSize: 20),
              decoration: const InputDecoration(
                  hintText: "Re-enter new Password",
                  hintStyle: TextStyle(
                      color: Colors.black12, fontWeight: FontWeight.w200),
                  isDense: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12))),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "New password should be at last 8 characters long. Should contain at least one capital letter, one number and one special charachter",
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(
            height: 30,
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
                  // nextScreenReplace(context, UserEditProfile(userEmail:widget.userEmail, weight: widget.weight, height: widget.height,userName: widget.userName,));
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Submit",
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
        ]),
      ),
    );
  }
}
