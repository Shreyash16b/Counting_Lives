
import 'package:flutter/material.dart';

import '../../Constants/constants.dart';
import '../../HospitalCard.dart';
import '../../drawers/userProfileDrawer.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  List catergoies = ["Cardiologist", "Dentist", "Orthopedic", "Chest"];
  List categoriesIcons = [
    "assets/images/cardiologist.png",
    "assets/images/dentist.png",
    "assets/images/orthopedic.png",
    "assets/images/chest.png"
  ];

  List services = ["Surgical", "Ambulance", "Pathology", "CT Scan"];
  List servicesIcons = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const UserProfileDrawer(userName: "userName"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(children: [
                  const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                          hintText: "Search for hospital/Service",
                          labelStyle: TextStyle(color: Constants.pink2),
                          hintStyle: TextStyle(
                              color: Color.fromARGB(174, 51, 51, 51),
                              fontWeight: FontWeight.w200)),
                    ),
                  ),
                ]),
              ),
              const Text(
                "Choose a category",
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
                      "Choose a service",
                      style: TextStyle(fontSize: 30, color: Colors.white),
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
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/",
                                      ),
                                      Text(
                                        services[index],
                                        style: const TextStyle(
                                            color: Constants.pink1,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }))),
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
                      child: ListView.builder(
                          itemCount: 9,
                          itemBuilder: (context, index) {
                            return const HospitalCard(
                                hospitalName: "hospitalName",
                                fromTime: TimeOfDay(hour: 10, minute: 0),
                                toTime: TimeOfDay(hour: 10, minute: 0),
                                hospitalAddress: "hospitalAddress",
                                service: "service");
                          }),
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
