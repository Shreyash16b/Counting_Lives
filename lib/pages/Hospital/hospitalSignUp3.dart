import 'package:counting_lives/pages/Hospital/Services/DatabaseService.dart';
import 'package:counting_lives/pages/Hospital/hospitalUpcomingAppointment.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import '../../Constants/constants.dart';
import '../../DoctorCard.dart';
import '../../Helper/HelperFunctions.dart';
import 'hospitalSignUp4.dart';

class HospitalSignUp3 extends StatefulWidget {
  final String hid;
  const HospitalSignUp3({super.key, required this.hid});

  @override
  State<HospitalSignUp3> createState() => _HospitalSignUp3State();
}

class _HospitalSignUp3State extends State<HospitalSignUp3> {
  final formkey = GlobalKey<FormState>();
  List<String> servicesChecked = [];
  bool _mri = false;
  bool _ct = false;
  bool _twod = false;
  bool _sonography = false;
  bool _xray = false;
  bool _doppler = false;
  String? fromDay = 'Monday';
  String? toDay = 'Saturday';
  TimeOfDay? fromTime;
  TimeOfDay? toTime;
  TextEditingController? searchController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        Image.asset("assets/images/Counting_lives.png"),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            // height: 750,
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
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Working Days: ",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
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
                      "Working Time: ",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
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
                  const SizedBox(height: 10,),
                  CustomCheckBoxGroup(
                    // autoWidth: true,
                    buttonTextStyle: ButtonTextStyle(
                      selectedColor: Colors.red,
                      unSelectedColor: Colors.orange,
                      textStyle: TextStyle(
                        fontSize: 16,
                      ),
                      selectedTextStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    unSelectedColor: Theme.of(context).canvasColor,
                    buttonLables: [
                      "X-Ray",
                      "CT Scan",
                      "2D",
                      "Sonography",
                      "Doppler",
                      "MRI",
                    ],
                    buttonValuesList: [
                      "X-Ray",
                      "CT Scan",
                      "2D",
                      "Sonography",
                      "Doppler",
                      "MRI",
                    ],
                    checkBoxButtonValues: (values) {
                      servicesChecked = values.map((e) => e.toString()).toList();
                      print(servicesChecked);
                    },
                    spacing: 0,
                    defaultSelected: [],
                    horizontal: false,
                    enableButtonWrap: true,
                    width: 150,
                    absoluteZeroSpacing: false,
                    selectedColor: Colors.green,
                    padding: 10, 
                  ),
                  // const SizedBox(
                  //   height: 30,
                  // ),
                  // const Align(
                  //   alignment: Alignment.topLeft,
                  //   child: Text(
                  //     "Add Doctors",
                  //     textAlign: TextAlign.start,
                  //     style: TextStyle(color: Colors.white, fontSize: 20),
                  //   ),
                  // ),
                  // Container(
                  //   padding: const EdgeInsets.all(5),
                  //   width: MediaQuery.of(context).size.width * 0.6,
                  //   decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     borderRadius: BorderRadius.circular(20),
                  //     border: Border.all(color: Colors.black, width: 2),
                  //   ),
                  //   child: TextField(
                  //     scrollPadding: EdgeInsets.zero,
                  //     controller: searchController,
                  //     style: const TextStyle(color: Constants.pink1),
                  //     decoration: InputDecoration(
                  //       hintText: "Search",
                  //       border: InputBorder.none,
                  //       hintStyle: TextStyle(
                  //           color: Constants.pink1.withOpacity(0.7),
                  //           fontSize: 16),
                  //     ),
                  //   ),
                  // ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  // Expanded(
                  //   child: Container(
                  //     decoration: const BoxDecoration(
                  //         borderRadius: BorderRadius.only(
                  //           topLeft: Radius.circular(30),
                  //           topRight: Radius.circular(30),
                  //         ),
                  //         color: Colors.white),
                  //     child: ListView.builder(
                  //       itemCount: 5,
                  //       itemBuilder: ((context, index) {
                  //         return const DoctorCard(
                  //             doctorName: "doctorName",
                  //             dorctorAddress: "doctorAddress",
                  //             doctorFromTime: TimeOfDay(hour: 10, minute: 0),
                  //             doctorToTime: TimeOfDay(hour: 10, minute: 30));
                  //       }),
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(height: 20),
                  Material(
                    borderRadius: BorderRadius.circular(25),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(25),
                      onTap: () async {

                        await DatabaseService(widget.hid).addHospitalDayTimeService(
                          fromDay.toString(),
                          toDay.toString(),
                          fromTime!.format(context),
                          toTime!.format(context),
                          servicesChecked.contains("X-Ray"),
                          servicesChecked.contains("CT Scan"),
                          servicesChecked.contains("MRI"),
                          servicesChecked.contains("Sonography"),
                          servicesChecked.contains("2D"),
                          servicesChecked.contains("Doppler"),
                          servicesChecked,
                        );
                        nextScreen(context, HospitalUpcomingAppointments(upcomingAppointments: 3, hospitalId: widget.hid));
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
          ),
        ),
      ],
    ));
  }
}
