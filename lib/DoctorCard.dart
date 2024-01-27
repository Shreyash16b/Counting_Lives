import 'package:counting_lives_shreyash/Constants/Constants.dart';
import 'package:flutter/material.dart';

class DoctorCard extends StatefulWidget {
  final String doctorName;
  final TimeOfDay doctorFromTime;
  final TimeOfDay doctorToTime;
  final String dorctorAddress;
  const DoctorCard(
      {super.key,
      required this.doctorName,
      required this.dorctorAddress,
      required this.doctorFromTime,
      required this.doctorToTime});

  @override
  State<DoctorCard> createState() => _DoctorCardState();
}

class _DoctorCardState extends State<DoctorCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.all(15),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(15)),
        height: 100,
        width: MediaQuery.of(context).size.width * 0.9,
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(
              "assets/images/Sample_User_Icon.png",
              fit: BoxFit.fitHeight,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  widget.doctorName,
                  style: const TextStyle(color: Constants.pink2, fontSize: 16),
                ),
                Text(
                    "${widget.doctorFromTime.format(context)} to ${widget.doctorToTime.format(context)}",
                    style: const TextStyle(fontSize: 14, color: Colors.grey))
              ],
            )
          ],
        ),
      ),
    );
  }
}
