import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:counting_lives/presentation/onboard_final.dart';
import 'package:flutter/material.dart';

class DocumentUpload extends StatefulWidget {
  final String uid;
  const DocumentUpload({super.key, required this.uid});

  @override
  State<DocumentUpload> createState() => _DocumentUploadState();
}

final _formKey = GlobalKey<FormState>();

class _DocumentUploadState extends State<DocumentUpload> {
  List<String> document_options = [
    "Aadhar Card",
    "Pan Card",
    "Voter Card",
    "Passport"
  ];
  String? _idNo;
  String? doc_type;
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
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 150,
                      width: 230,
                      child: const Text(
                        "Document for User Verification",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 32, color: Colors.white),
                      ),
                    ),
                    Text(
                      "Select the Document Type: ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 300,
                      child: DropdownButtonFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1))),
                          value: doc_type,
                          elevation: 12,
                          style: TextStyle(
                            fontSize: 20,
                            color: const Color.fromARGB(255, 43, 55, 123),
                          ),
                          hint: Text("Select the Document Type"),
                          items: document_options
                              .map((e) => DropdownMenuItem(
                                    child: Text(e),
                                    value: e,
                                  ))
                              .toList(),
                          onChanged: (val) {
                            if (val == null) {
                              return;
                            }
                            setState(() {
                              doc_type = val.toString();
                              print(val);
                            });
                          }),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      doc_type == null
                          ? "Select a Document First"
                          : "Enter the $doc_type Unique ID : ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 6.9,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: SizedBox(
                        width: 300,
                        child: TextFormField(
                          onSaved: (newValue) => _idNo = newValue,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 4),
                              hintText:
                                  doc_type == null ? "" : "${doc_type} ID",
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(174, 51, 51, 51),
                                  fontWeight: FontWeight.w200)),
                          validator: (value) {
                            if (value!.isEmpty && doc_type == null) {
                              return "ID cannot be empty";
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(25),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(25),
                        onTap: () async {

                          if (doc_type != null && _formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            if (doc_type == "Aadhar Card") {
                              await FirebaseFirestore.instance
                                  .collection('users')
                                  .doc(widget.uid)
                                  .update({'aadharno': _idNo});
                            }
                            else if (doc_type == "Pan Card") {
                              await FirebaseFirestore.instance
                                  .collection('users')
                                  .doc(widget.uid)
                                  .update({'pancard': _idNo});
                            }
                            else if (doc_type == "Passport") {
                              await FirebaseFirestore.instance
                                  .collection('users')
                                  .doc(widget.uid)
                                  .update({'passport': _idNo});
                            }
                            else if (doc_type == "Voter Card") {
                              await FirebaseFirestore.instance
                                  .collection('users')
                                  .doc(widget.uid)
                                  .update({'voterid': _idNo});
                            }
                            else{
                              return;
                            }
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) => OnboardFinal(),
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
}
