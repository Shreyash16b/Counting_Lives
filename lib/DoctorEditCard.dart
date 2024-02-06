import '../../Constants/constants.dart';
import 'package:flutter/material.dart';

class DoctorEditCard extends StatefulWidget {
  final String doctorName;
  final TimeOfDay doctorFromTime;
  final TimeOfDay doctorToTime;
  final String dorctorAddress;
  final bool remove;
  const DoctorEditCard(
      {super.key,
      required this.doctorName,
      required this.dorctorAddress,
      required this.doctorFromTime,
      required this.doctorToTime,
      required this.remove});

  @override
  State<DoctorEditCard> createState() => _DoctorEditCardState();
}

class _DoctorEditCardState extends State<DoctorEditCard> {
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
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: widget.remove
                      ? const LinearGradient(
                          colors: [Constants.pink1, Constants.pink2],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight)
                      : const LinearGradient(
                          colors: [Constants.green1, Constants.green2],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight)),
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
                  child: Text(
                    widget.remove ? "Remove" : "Add",
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
