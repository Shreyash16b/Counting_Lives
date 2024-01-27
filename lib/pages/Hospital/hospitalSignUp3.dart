import 'package:counting_lives_shreyash/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../DoctorCard.dart';
import '../../Helper/HelperFunctions.dart';
import 'hospitalSignUp4.dart';

class HospitalSignUp3 extends StatefulWidget {
  const HospitalSignUp3({super.key});

  @override
  State<HospitalSignUp3> createState() => _HospitalSignUp3State();
}

class _HospitalSignUp3State extends State<HospitalSignUp3> {
  String? fromDay = 'Monday';
  String? toDay = 'Saturday';
  TimeOfDay? fromTime;
  TimeOfDay? toTime;
  TextEditingController? searchController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Image.asset("assets/images/Counting_lives.png"),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            height: 750,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35), topRight: Radius.circular(35)),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 255, 153, 85),
                  Color.fromARGB(255, 255, 85, 153)
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Working Days ",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      padding: const EdgeInsets.symmetric(
                          vertical: 3, horizontal: 10),
                      child: DropdownButton(
                          value: fromDay,
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                            size: 16,
                          ),
                          items: Constants.days,
                          onChanged: (String? FromDay) {
                            setState(() {
                              fromDay = FromDay;
                            });
                          }),
                    ),
                    // const SizedBox(
                    //   width: 20,
                    // ),
                    const Text(
                      "to",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    // const SizedBox(
                    //   width: 20,
                    // ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      padding: const EdgeInsets.symmetric(
                          vertical: 3, horizontal: 10),
                      child: DropdownButton(
                          value: toDay,
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                            size: 16,
                          ),
                          items: Constants.days,
                          onChanged: (String? ToDay) {
                            setState(() {
                              toDay = ToDay;
                            });
                          }),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Working Time ",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: GestureDetector(
                        child: Text(
                          fromTime == null
                              ? TimeOfDay.now().format(context)
                              : fromTime!.format(context),
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        onTap: () async {
                          TimeOfDay? t = await showTimePicker(
                              context: context, initialTime: TimeOfDay.now());
                          setState(() {
                            fromTime = t;
                          });
                        },
                      ),
                    ),
                    const Text(
                      "to",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: GestureDetector(
                        child: Text(
                          toTime == null
                              ? TimeOfDay.now().format(context)
                              : toTime!.format(context),
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        onTap: () async {
                          TimeOfDay? t = await showTimePicker(
                              context: context, initialTime: TimeOfDay.now());
                          setState(() {
                            toTime = t;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Add Doctors",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width * 0.6,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: TextField(
                    scrollPadding: EdgeInsets.zero,
                    controller: searchController,
                    style: const TextStyle(color: Constants.pink1),
                    decoration: InputDecoration(
                      hintText: "Search",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          color: Constants.pink1.withOpacity(0.7),
                          fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        color: Colors.white),
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: ((context, index) {
                        return const DoctorCard(
                            doctorName: "doctorName",
                            dorctorAddress: "doctorAddress",
                            doctorFromTime: TimeOfDay(hour: 10, minute: 0),
                            doctorToTime: TimeOfDay(hour: 10, minute: 30));
                      }),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Material(
                  borderRadius: BorderRadius.circular(25),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(25),
                    onTap: () {
                      nextScreen(context, const HospitalSignUp4());
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Next",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(175, 255, 85, 85)),
                            ),
                            Icon(Icons.arrow_forward_outlined,
                                color: Color.fromARGB(175, 255, 85, 85))
                          ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
