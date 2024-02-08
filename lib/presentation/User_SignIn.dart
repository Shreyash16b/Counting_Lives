import 'package:counting_lives/pages/User/Home.dart';
import 'package:counting_lives/presentation/sign_up.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class User_SignIn extends StatefulWidget {
  User_SignIn({super.key});

  @override
  State<User_SignIn> createState() => _User_SignInState();
}

final _formKey = GlobalKey<FormState>();

class _User_SignInState extends State<User_SignIn> {
  bool passwordVisible = false;
  String? _userEmail;
  String? _userPassword;
  @override
  void initState() {
    super.initState();
    passwordVisible = true;
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
                key: _formKey,
                child: Column(children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 150,
                    width: 230,
                    child: const Text(
                      "One App to Connect with doctors",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 32, color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
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
                          onSaved: (newValue) => _userEmail = newValue,
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 4),
                              hintText: "Enter your email id",
                              labelText: "Email ID",
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(174, 51, 51, 51),
                                  fontWeight: FontWeight.w200)),
                          validator: (value) {
                            if (value!.isEmpty || !value.contains("@")) {
                              return "Email cannot be empty/Enter Proper Email";
                            }
                            return null;
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
                          onSaved: (newValue) => _userPassword = newValue,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter a password";
                            }
                            return null;
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
                  Material(
                    borderRadius: BorderRadius.circular(25),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(25),
                      onTap: () async {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                                  email: _userEmail!, password: _userPassword!);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => UserHome(),
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
                                "Login",
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
                  const SizedBox(
                    height: 30,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => SignUpForm(),
                          ),
                        );
                      },
                      child: Container(
                        width: 150,
                        height: 60,
                        alignment: Alignment.center,
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 100,
                                height: 60,
                                child: Text(
                                  "New Member?  Sign Up",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(175, 255, 85, 85)),
                                ),
                              ),
                              Icon(Icons.arrow_forward_outlined,
                                  color: Color.fromARGB(175, 255, 85, 85))
                            ]),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
