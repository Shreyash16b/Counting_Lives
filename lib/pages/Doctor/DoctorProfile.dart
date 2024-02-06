import 'package:flutter/material.dart';

import '../../Constants/constants.dart';
import '../../Helper/HelperFunctions.dart';
import 'DoctoreditProfile.dart';

class DoctorProfile extends StatefulWidget {
  final String doctorName;
  final String doctorHospitalName;
  final String doctorEmail;
  final String doctorPhoneNumber;
  final String specializtaion;
  final String qualification;
  const DoctorProfile(
      {super.key, required this.specializtaion, required this.qualification, required this.doctorName, required this.doctorEmail, required this.doctorPhoneNumber, required this.doctorHospitalName});

  @override
  State<DoctorProfile> createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  @override
  Widget build(BuildContext context) {
    return Material(
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
                Text("Hi${widget.doctorName}", style: const TextStyle(color: Colors.white, fontSize: 18),),
                const Image(
                  image: AssetImage("assets/images/UserPlaceholder.jpg"),
                ),
                const SizedBox(height: 40),
                Column(
                  children: [
                    Row(
                      children: [
                        const Text("Qualification"),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(widget.qualification)
                      ],
                    ),
                    Row(
                      children: [
                        const Text("Specialization"),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(widget.specializtaion)
                      ],
                    ),
                  ],
                )
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
                  widget.doctorEmail,
                  style: const TextStyle(fontSize: 20, color: Constants.green1),
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
                  widget.doctorPhoneNumber,
                  style: const TextStyle(fontSize: 20, color: Constants.green1),
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
                            DoctorEditProfile(
                              doctorEmail: widget.doctorEmail,
                              doctorName: widget.doctorName,
                              doctorHospitalName: widget.doctorHospitalName,
                              doctorQualification: widget.qualification,
                              doctorSpecialization: widget.specializtaion,
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
    );
  }
}
