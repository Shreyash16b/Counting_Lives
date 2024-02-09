import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../Constants/constants.dart';
import '../../HospitalCard.dart';
import '../../drawers/userProfileDrawer.dart';

class UserUpcomingAppointments extends StatefulWidget {
  const UserUpcomingAppointments({super.key});

  @override
  State<UserUpcomingAppointments> createState() =>
      _UserUpcomingAppointmentsState();
}

class _UserUpcomingAppointmentsState extends State<UserUpcomingAppointments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: UserProfileDrawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Constants.green2, Constants.green1],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
        ),
        title: const Text(
          "Upcoming Appointments",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Upcoming 10",
              style: TextStyle(color: Constants.green1),
            ),
            Expanded(
                child: StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('users')
                        .doc(FirebaseAuth.instance.currentUser!.uid)
                        .collection('appointments')
                        .snapshots(),
                    builder: (BuildContext context,
                        AsyncSnapshot<QuerySnapshot> snapshot) {
                      if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                        return const Text('Nothing here');
                      }
                      if (snapshot.hasError) {
                        return const Text('Something went wrong');
                      }

                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Text("Loading");
                      }
                      return ListView.builder(
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            var entered_list = snapshot.data!.docs;
                            var totime = int.parse(entered_list[index]['time']);
                            return HospitalCard(
                                hospitalName: entered_list[index][''],
                                fromTime: entered_list[index]['time'],
                                toTime: "",
                                hospitalAddress: entered_list[index][''],
                                service: entered_list[index]['']);
                          });
                    }))
          ],
        ),
      ),
    );
  }
}
