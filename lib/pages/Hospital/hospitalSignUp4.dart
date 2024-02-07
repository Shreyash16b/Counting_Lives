
// import 'package:flutter/material.dart';

// import '../../Constants/constants.dart';
// import '../../Helper/HelperFunctions.dart';
// import 'hospitalSignUp3.dart';
// import 'hospitalUpcomingAppointment.dart';

// class HospitalSignUp4 extends StatefulWidget {
//   const HospitalSignUp4({super.key});

//   @override
//   State<HospitalSignUp4> createState() => _HospitalSignUp4State();
// }

// class _HospitalSignUp4State extends State<HospitalSignUp4> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const SizedBox(
//               height: 40,
//             ),
//             Image.asset("assets/images/Counting_lives.png"),
//             const SizedBox(
//               height: 20,
//             ),
//             const Text(
//               "Provide your details",
//               style: TextStyle(fontSize: 28, color: Colors.white),
//             ),
//             Container(
//               height:700,
//               width: MediaQuery.of(context).size.width,
//               decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(35),
//                     topRight: Radius.circular(35)),
//                 gradient: LinearGradient(
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                   colors: [
//                     Color.fromARGB(255, 255, 153, 85),
//                     Color.fromARGB(255, 255, 85, 153)
//                   ],
//                 ),
//               ),
//               child: Column(
//                 children: [
//                   const SizedBox(
//                     height: 40,
//                   ),
//                   Container(
//                     padding: const EdgeInsets.all(8),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: SizedBox(
//                       width: 300,
//                       child: TextFormField(
//                         maxLines: 8,
//                         minLines: 5,
//                         decoration: const InputDecoration(
//                             contentPadding: EdgeInsets.symmetric(
//                                 vertical: 4, horizontal: 4),
//                             hintText: "Enter Address",
//                             labelText: "Address",
//                             labelStyle: TextStyle(color: Constants.pink2),
//                             hintStyle: TextStyle(
//                                 color: Color.fromARGB(174, 51, 51, 51),
//                                 fontWeight: FontWeight.w200)),
//                         validator: (value) {
//                           if (value!.isEmpty) {
//                             return "Address cannot be empty";
//                           } else if (value.length < 20) {
//                             return "Address must be at least 20 characters long";
//                           }
//                           return null;
//                         },
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 30,
//                   ),
//                   Container(
//                     padding: const EdgeInsets.only(left: 10),
//                     width: MediaQuery.of(context).size.width * 0.8,
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.black),
//                         borderRadius: BorderRadius.circular(25),
//                         color: Colors.white),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         const Text("Government Certificate"),
//                         Container(
//                           // padding: const EdgeInsets.all(10),
//                           decoration: BoxDecoration(
//                             border: Border.all(
//                               width: 8,
//                               color: Colors.white,
//                             ),
//                             borderRadius: BorderRadius.circular(100),
//                             gradient: const LinearGradient(
//                                 colors: [Constants.pink1, Constants.pink2],
//                                 begin: Alignment.topLeft,
//                                 end: Alignment.bottomRight),
//                           ),
//                           child: ElevatedButton(
//                             onPressed: () {},
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.transparent,
//                               shadowColor: Colors.transparent,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(5),
//                               ),
//                             ),
//                             child: const Text(
//                               "Upload",
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 30,
//                   ),
//                   Material(
//                     borderRadius: BorderRadius.circular(25),
//                     child: InkWell(
//                       borderRadius: BorderRadius.circular(25),
//                       onTap: () {
//                         nextScreen(context, const HospitalUpcomingAppointments(upcomingAppointments: 7, hospitalName: "abc"));
//                       },
//                       child: Container(
//                         width: 150,
//                         height: 50,
//                         alignment: Alignment.center,
//                         child: const Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               Text(
//                                 "Submit",
//                                 style: TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                     color: Color.fromARGB(175, 255, 85, 85)),
//                               ),
//                               Icon(Icons.arrow_forward_outlined,
//                                   color: Color.fromARGB(175, 255, 85, 85))
//                             ]),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
