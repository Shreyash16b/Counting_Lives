import 'package:flutter/material.dart';

import 'Constants/constants.dart';

class HospitalCard extends StatefulWidget {
  final String? hospitalName;
  final String? service;
  final String? fromTime;
  final String? toTime;
  final String? hospitalAddress;
  const HospitalCard(
      {super.key,
      required this.hospitalName,
      required this.fromTime,
      required this.toTime,
      required this.hospitalAddress,
      required this.service});

  @override
  State<HospitalCard> createState() => _HospitalCardState();
}

class _HospitalCardState extends State<HospitalCard> {
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
        width: MediaQuery.of(context).size.width * 0.9,
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(
              "assets/images/Sample_User_Icon.png",
              height: 100,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    widget.hospitalName!,
                    style: const TextStyle(color: Constants.pink2, fontSize: 16),
                  ),
                  Text(widget.service!,
                      style: const TextStyle(fontSize: 14, color: Colors.grey)),
                  Text(widget.hospitalAddress!, overflow: TextOverflow.clip,
                      style: const TextStyle(fontSize: 14, color: Colors.grey)),
                  Text(
                      "${widget.fromTime} to ${widget.toTime}",
                      style: const TextStyle(fontSize: 14, color: Colors.blue))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
