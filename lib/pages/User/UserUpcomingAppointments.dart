
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
      drawer: UserProfileDrawer(userName: "userName"),
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
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return HospitalCard(
                        service: "MRI",
                        hospitalName: "hospitalName",
                        fromTime: TimeOfDay(hour: 10, minute: 0),
                        toTime: TimeOfDay(hour: 10, minute: 0),
                        hospitalAddress: "hospitalAddress");
                  }),
            )
          ],
        ),
      ),
    );
  }
}
