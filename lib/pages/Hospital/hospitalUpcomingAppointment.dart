
import 'package:flutter/material.dart';
import '../../Constants/constants.dart';
import '../../DoctorCard.dart';
import '../../drawers/hospitalProfileDrawer.dart';

class HospitalUpcomingAppointments extends StatefulWidget {
  final int upcomingAppointments;
  final String hospitalName;
  const HospitalUpcomingAppointments(
      {super.key,
      required this.upcomingAppointments,
      required this.hospitalName});

  @override
  State<HospitalUpcomingAppointments> createState() =>
      _HospitalUpcomingAppointmentsState();
}

class _HospitalUpcomingAppointmentsState
    extends State<HospitalUpcomingAppointments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HospitalProfileDrawer(hospitalName: widget.hospitalName),
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
              "Upcoming ${widget.upcomingAppointments}",
              style: TextStyle(color: Constants.green1),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: widget.upcomingAppointments,
                  itemBuilder: (context, index) {
                    return const DoctorCard(
                        doctorName: "doctorName",
                        dorctorAddress: "dorctorAddress",
                        doctorFromTime: TimeOfDay(hour: 10, minute: 0),
                        doctorToTime: TimeOfDay(hour: 10, minute: 30));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
