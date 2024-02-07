import 'package:counting_lives/presentation/sign_up_otp.dart';
import 'package:counting_lives/presentation/sign_up_success.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


final _firebase = FirebaseAuth.instance;

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _form = GlobalKey<FormState>();
  bool passwordVisible = false;
  bool checkBoxValue = false;
  String _userEmail = '';
  String _userPassword = '';
  String _userPhone = '';
  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  void _onSubmit() async {
    bool isValid = _form.currentState!.validate();
    if (checkBoxValue == true && isValid) {
      _form.currentState!.save();

      try {
        final userCredentials = await _firebase.createUserWithEmailAndPassword(
            email: _userEmail, password: _userPassword);
        await FirebaseFirestore.instance
            .collection('users')
            .doc(userCredentials.user!.uid)
            .set({
              'email': _userEmail,
              'phoneNumber': _userPhone
              });
        print(userCredentials.user!.uid);
      } on FirebaseAuthException catch (error) {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(error.message ?? "Authentication Failed")));
      }
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => SignUpSuccess(),
        ),
      );
    }
  }

  TextEditingController _phoneController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  void dispose() {
    _passwordController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
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
              height: 30,
            ),
            Container(
              height: 700,
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
                        Color.fromARGB(255, 255, 153, 85),
                        Color.fromARGB(255, 255, 85, 153)
                      ])),
              child: Form(
                key: _form,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 100,
                      width: 230,
                      child: const Text(
                        "Provide Your Details",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 32, color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: SizedBox(
                          width: 300,
                          child: TextFormField(
                            controller: _phoneController,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 4, horizontal: 4),
                                hintText: "Enter your phone number",
                                labelText: "Phone Number",
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(174, 51, 51, 51),
                                    fontWeight: FontWeight.w200)),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Number cannot be empty";
                              } else if (value.length != 10) {
                                return "Number should be of 10 digits";
                              } else {
                                return null;
                              }
                            },
                            onSaved: (newValue) {
                              _userPhone = newValue!;
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: SizedBox(
                          width: 300,
                          child: TextFormField(
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 4, horizontal: 4),
                                hintText: "Enter your email id",
                                labelText: "Email ID",
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(174, 51, 51, 51),
                                    fontWeight: FontWeight.w200)),
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value.trim().length == 0) {
                                return "Email cannot be empty";
                              } else if (!value.contains('@')) {
                                return "Enter valid Email";
                              } else {
                                return null;
                              }
                            },
                            onSaved: (newValue) {
                              _userEmail = newValue!;
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: SizedBox(
                          width: 300,
                          child: TextFormField(
                            controller: _passwordController,
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value.length < 6 ||
                                  value.trim().length == 0) {
                                return "Password must be atleast 6 digits long";
                              } else {
                                return null;
                              }
                            },
                            onSaved: (newValue) {
                              _userPassword = newValue!;
                            },
                            obscureText: passwordVisible,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 4),
                              hintText: "Password",
                              labelText: "Password",
                              suffixIcon: IconButton(
                                icon: Icon(passwordVisible
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                                onPressed: () {
                                  setState(
                                    () {
                                      passwordVisible = !passwordVisible;
                                    },
                                  );
                                },
                              ),
                              // alignLabelWithHint: false,
                              // filled: true,
                            ),
                            // keyboardType: TextInputType.visiblePassword,
                            // textInputAction: TextInputAction.done,
                          ),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          value: checkBoxValue,
                          activeColor: Colors.green,
                          onChanged: (bool? newValue) {
                            setState(
                              () {
                                checkBoxValue = newValue!;
                              },
                            );
                          },
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'I agree to Terms and Condition\n and Privacy Policy',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(25),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(25),
                        onTap: _onSubmit,
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
          ],
        ),
      ),
    );
  }
}
