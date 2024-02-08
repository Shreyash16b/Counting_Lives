import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:counting_lives/presentation/document_upload.dart';
import 'package:flutter/material.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:intl/intl.dart';

class InfoForm1 extends StatefulWidget {
  final String uid;
  const InfoForm1({super.key, required this.uid});

  @override
  State<InfoForm1> createState() => _InfoForm1State();
}

class _InfoForm1State extends State<InfoForm1> {
  final _formKey = GlobalKey<FormState>();
  final formatter = DateFormat.yMd();
  bool isValid =false;
  String? name;
  int? height;
  int? weight;
  var _datevar;
  var gender;
  void BirthDatePicker() async {
    final now = DateTime.now();
    final firstdate = DateTime(now.year - 100, now.month, now.day);
    final lastdate = DateTime(now.year, now.month, now.day);
    final _datepicked = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: firstdate,
      lastDate: lastdate,
    );
    setState(() {
      _datevar = formatter.format(_datepicked!);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Image.asset(
            'assets/images/Counting_lives.png',
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: Container(
              // height: 755,
              width: MediaQuery.of(context).size.width,
              // width: double.maxFinite,
              // height: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35)),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 170, 212, 0),
                        Color.fromARGB(255, 0, 212, 170)
                      ])),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 100,
                      width: 230,
                      child: const Text(
                        "Let's get to\nKnow you first",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 32, color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: SizedBox(
                        width: 300,
                        child: TextFormField(
                          onSaved: (newValue) {
                            name = newValue;
                          },
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 4),
                              hintText: "For Eg: Jack Hoe",
                              labelText: "Enter your name",
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(174, 51, 51, 51),
                                  fontWeight: FontWeight.w200)),
                          validator: (value) {
                            if (value!.isEmpty || value.trim().length == 0) {
                              return "Name cannot be empty";
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomRadioButton(
                      enableShape: true,
                      shapeRadius: 50.00,
                      elevation: 0,
                      unSelectedColor: Colors.white,
                      buttonLables: [
                        'Male',
                        'Female',
                      ],
                      buttonValues: [
                        "Male",
                        "Female",
                      ],
                      buttonTextStyle: ButtonTextStyle(
                          selectedColor: Colors.white,
                          unSelectedColor: Color.fromARGB(255, 1, 122, 98),
                          textStyle: TextStyle(fontSize: 16)),
                      radioButtonValue: (value) {
                        gender = value;
                        print(value);
                      },
                      selectedColor: Color.fromARGB(255, 0, 212, 170),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Enter your BirthDate:',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    _buildDateInput(context),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: SizedBox(
                            width: 150,
                            child: TextFormField(
                              onSaved: (newValue) {
                                height = int.parse(newValue!);
                              },
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 4),
                                  hintText: "For eg: 160",
                                  labelText: "Height in Cms",
                                  hintStyle: TextStyle(
                                      color: Color.fromARGB(174, 51, 51, 51),
                                      fontWeight: FontWeight.w200)),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Height cannot be empty";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: SizedBox(
                            width: 150,
                            child: TextFormField(
                              onSaved: (newValue) {
                                weight = int.parse(newValue!);
                              },
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 4),
                                  hintText: "For Eg: 70",
                                  labelText: "Weight in Kgs",
                                  hintStyle: TextStyle(
                                      color: Color.fromARGB(174, 51, 51, 51),
                                      fontWeight: FontWeight.w200)),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Weight cannot be empty";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(25),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(25),
                        onTap: () {
                          isValid = _formKey.currentState!.validate();
                          if(isValid){
                            _formKey.currentState!.save();
                            FirebaseFirestore.instance.collection('users').doc(widget.uid).update({
                              'name': name,
                              'height': height,
                              'weight': weight,
                              'dob': _datevar,
                              'gender': gender,
                            });
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) => DocumentUpload(uid: widget.uid,),
                              ),
                            );
                          }
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
      ),
    );
  }

  Widget _buildDateInput(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
      child: Container(
        color: Colors.green[10],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _datevar == null ? 'No date entered' : 'Date : $_datevar',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            const SizedBox(
              width: 10,
            ),
            IconButton(
              onPressed: BirthDatePicker,
              icon: Icon(
                Icons.calendar_month_rounded,
                color: Colors.white,
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
