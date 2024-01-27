import 'package:counting_lives_shreyash/Constants/constants.dart';
import 'package:counting_lives_shreyash/Helper/HelperFunctions.dart';
import 'package:counting_lives_shreyash/pages/Hospital/hospitalSignUp2.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';

class HospitalSignUp1 extends StatefulWidget {
  const HospitalSignUp1({super.key});

  @override
  State<HospitalSignUp1> createState() => _HospitalSignUp1State();
}

class _HospitalSignUp1State extends State<HospitalSignUp1> {
  String state = "s1", district = "abc", city = "abc";
  String? countryValue = "";
  String? stateValue = "";
  String? cityValue = "";
  String address = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      const SizedBox(
        height: 40,
      ),
      Image.asset("assets/images/Counting_lives.png"),
      const SizedBox(
        height: 20,
      ),
      Container(
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
          child: Column(children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Provide your details",
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: SizedBox(
                width: 300,
                child: TextFormField(
                  decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                      hintText: "Enter Hospital Name",
                      labelText: "Hospital Name",
                      labelStyle: TextStyle(color: Constants.pink2),
                      hintStyle: TextStyle(
                          color: Color.fromARGB(174, 51, 51, 51),
                          fontWeight: FontWeight.w200)),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Username cannot be empty";
                    } else if (value.length < 4) {
                      return "Username must be at least 4 characters long";
                    }
                    return null;
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // Expanded(
            //   child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //       children: [
            // Container(
            //   padding: const EdgeInsets.symmetric(horizontal: 10),
            //   color: Colors.white,
            //   child: DropdownButton<String>(
            //       value: state,
            //       icon: const Icon(
            //         Icons.arrow_drop_down,
            //         color: Colors.black,
            //         size: 16,
            //       ),
            //       onChanged: (String? selectedState) {
            //         setState(() {
            //           state = selectedState!;
            //         });
            //       },
            //       items: Constants.states),
            // ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CSCPicker(
                showStates: true,

                /// Enable disable city drop down [OPTIONAL PARAMETER]
                showCities: true,
                // countryFilter: const [CscCountry.India],
                defaultCountry: CscCountry.India,
                dropdownHeadingStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),

                ///DropdownDialog Item style [OPTIONAL PARAMETER]
                dropdownItemStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),

                ///Dialog box radius [OPTIONAL PARAMETER]
                dropdownDialogRadius: 10.0,

                ///Search bar radius [OPTIONAL PARAMETER]
                searchBarRadius: 10.0,

                ///triggers once country selected in dropdown
                onCountryChanged: (value) {
                  setState(() {
                    ///store value in country variable
                    countryValue = value;
                  });
                },

                ///triggers once state selected in dropdown
                onStateChanged: (value) {
                  setState(() {
                    ///store value in state variable
                    stateValue = value;
                  });
                },

                ///triggers once city selected in dropdown
                onCityChanged: (value) {
                  setState(() {
                    ///store value in city variable
                    cityValue = value;
                  });
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: SizedBox(
                width: 300,
                child: TextFormField(
                  maxLines: 3,
                  minLines: 2,
                  decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                      hintText: "Enter Address",
                      labelText: "Address",
                      labelStyle: TextStyle(color: Constants.pink2),
                      hintStyle: TextStyle(
                          color: Color.fromARGB(174, 51, 51, 51),
                          fontWeight: FontWeight.w200)),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Address cannot be empty";
                    } else if (value.length < 20) {
                      return "Address must be at least 20 characters long";
                    }
                    return null;
                  },
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: SizedBox(
                      width: 80,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 4),
                            labelText: "Pincode",
                            labelStyle:
                                TextStyle(color: Constants.pink2, fontSize: 10),
                            hintStyle: TextStyle(
                                color: Color.fromARGB(174, 51, 51, 51),
                                fontWeight: FontWeight.w200)),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Pincode cannot be empty";
                          } else if (value.length != 6) {
                            return "Pincode must be 6 characters long";
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SizedBox(
                  width: 300,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                        labelText: "Phone Number",
                        labelStyle:
                            TextStyle(color: Constants.pink2, fontSize: 16),
                        hintStyle: TextStyle(
                            color: Color.fromARGB(174, 51, 51, 51),
                            fontWeight: FontWeight.w200)),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Phone Number cannot be empty";
                      } else if (value.length != 10) {
                        return "Phone Number must be 10 characters long";
                      }
                      return null;
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SizedBox(
                  width: 300,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                        labelText: "Email Address",
                        labelStyle:
                            TextStyle(color: Constants.pink2, fontSize: 16),
                        hintStyle: TextStyle(
                            color: Color.fromARGB(174, 51, 51, 51),
                            fontWeight: FontWeight.w200)),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email Address cannot be empty";
                      }
                      return null;
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Material(
              borderRadius: BorderRadius.circular(25),
              child: InkWell(
                borderRadius: BorderRadius.circular(25),
                onTap: () {
                  nextScreen(context, HospitalSignUp2());
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
          ]))
    ])));
  }
}
