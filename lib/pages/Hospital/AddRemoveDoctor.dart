
import 'package:flutter/material.dart';

import '../../Constants/constants.dart';
import '../../drawers/doctorProfileDrawer.dart';
import '../../DoctorEditCard.dart';
import '../../drawers/hospitalProfileDrawer.dart';

class Add_RemoveDoctor extends StatefulWidget {
  const Add_RemoveDoctor({super.key});

  @override
  State<Add_RemoveDoctor> createState() => _Add_RemoveDoctorState();
}

class _Add_RemoveDoctorState extends State<Add_RemoveDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HospitalProfileDrawer(hospitalName: "hospitalName"),
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
          "Doctors",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const DoctorEditCard(
                      doctorName: "doctorName",
                      dorctorAddress: "dorctorAddress",
                      doctorFromTime: TimeOfDay(hour: 10, minute: 0),
                      doctorToTime: TimeOfDay(hour: 10, minute: 30),
                      remove: true);
                }),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(
                    colors: [Constants.pink1, Constants.pink2],
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
                        "Edit",
                        style: TextStyle(color: Colors.white, fontSize: 18),
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
          ),
        ]),
      ),
    );
  }
}
