import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:counting_lives/Helper/HelperFunctions.dart';
import 'package:counting_lives/core/app_export.dart';
import 'package:counting_lives/pages/User/UserUpcomingAppointments.dart';
import 'package:counting_lives/presentation/service_profile_page/service_profile_page.dart';
import 'package:counting_lives/presentation/services_screen/services_screen.dart';
import 'package:counting_lives/theme/custom_button_style.dart';
import 'package:counting_lives/widgets/custom_elevated_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../Constants/constants.dart';
import '../../HospitalCard.dart';
import '../../drawers/userProfileDrawer.dart';
import '../../presentation/service_profile_tab_container_screen/service_profile_tab_container_screen.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  final String uid = FirebaseAuth.instance.currentUser!.uid;
  List catergoies = ["Cardiologist", "Dentist", "Orthopedic", "Chest"];
  List categoriesIcons = [
    "assets/images/cardiologist.png",
    "assets/images/dentist.png",
    "assets/images/orthopedic.png",
    "assets/images/chest.png"
  ];

  List services = ["X-Ray", "MRI", "Sonography", "Doppler", "CT Scan", "2D"];
  List servicesIcons = [
    "assets/images/medical-mask.png",
    "assets/images/ambulance.png",
    "assets/images/pathology.png",
    "assets/images/ct-scan.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Services"),
      ),
      drawer: const UserProfileDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomElevatedButton(
                    text: "Book Service",
                    width: MediaQuery.of(context).size.width * 0.4,
                    // margin: EdgeInsets.symmetric(horizontal: 50.h),
                    buttonStyle: CustomButtonStyles.none,
                    decoration:
                        CustomButtonStyles.gradientDeepOrangeToPinkDecoration,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => ServicesScreen(
                            uid: FirebaseAuth.instance.currentUser!.uid,
                          ),
                        ),
                      );
                    },
                  ),
                  CustomElevatedButton(
                    text: "Show Appointments",
                    width: MediaQuery.of(context).size.width * 0.45,
                    // margin: EdgeInsets.symmetric(horizontal: 50.h),
                    buttonStyle: CustomButtonStyles.none,
                    decoration:
                        CustomButtonStyles.gradientDeepOrangeToPinkDecoration,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => UserUpcomingAppointments(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Categories Available",
                style: TextStyle(color: Constants.green2, fontSize: 24),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: catergoies.length,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Constants.green1, Constants.green2],
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                categoriesIcons[index],
                              ),
                              Text(
                                catergoies[index],
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      );
                    })),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [Constants.pink1, Constants.pink2],
                  ),
                ),
                child: Column(
                  children: [
                    const Text(
                      "Services Available",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: services.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              child: Text(
                                services[index],
                                style: const TextStyle(
                                    color: Constants.pink1, fontSize: 16),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.45,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: StreamBuilder(
                        stream: FirebaseFirestore.instance
                            .collection('hospital')
                            .snapshots(),
                        builder: (BuildContext context,
                            AsyncSnapshot<QuerySnapshot> snapshot) {
                          if (!snapshot.hasData ||
                              snapshot.data!.docs.isEmpty) {
                            return const Text('Nothing here');
                          }
                          if (snapshot.hasError) {
                            return const Text('Something went wrong');
                          }

                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Text("Loading");
                          }
                          var enteredlist = snapshot.data!.docs;
                          return ListView.builder(
                            itemCount: snapshot.data!.docs.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  nextScreen(
                                      context,
                                      ServiceProfileTabContainerScreen(
                                        uid: uid,
                                        hid: enteredlist[index].id,
                                      ));
                                },
                                child: HospitalCard(
                                    hospitalName: enteredlist[index]
                                        ['hospitalName'],
                                    fromTime: enteredlist[index]['fromTime'],
                                    toTime: enteredlist[index]['toTime'],
                                    hospitalAddress: enteredlist[index]
                                        ['hospitalAddress'],
                                    service: ''),
                              );
                            },
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
