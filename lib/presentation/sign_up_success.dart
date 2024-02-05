import 'package:counting_lives/presentation/info_form_1.dart';
import 'package:flutter/material.dart';

class SignUpSuccess extends StatefulWidget {
  const SignUpSuccess({super.key});

  @override
  State<SignUpSuccess> createState() => _SignUpSuccessState();
}

class _SignUpSuccessState extends State<SignUpSuccess> {
  bool passwordVisible = false;
  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                const SizedBox(
                  height: 100,
                ),
                Container(
                  height: 100,
                  width: 230,
                  child: const Text(
                    "Congratulations!\nYou are in!",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
                Container(
                  height: 100,
                  width: 230,
                  child: const Text(
                    "Please login to continue",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
                // Column(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     // Container(
                //     //   decoration: BoxDecoration(
                //     //     color: Colors.white,
                //     //     borderRadius: BorderRadius.circular(8),
                //     //   ),
                //     //   child: SizedBox(
                //     //     width: 300,
                //     //     child: TextFormField(
                //     //       decoration: const InputDecoration(
                //     //           contentPadding: EdgeInsets.symmetric(
                //     //               vertical: 4, horizontal: 4),
                //     //           hintText: "Enter your email id/phone number",
                //     //           labelText: "Email ID/ Phone Number",
                //     //           hintStyle: TextStyle(
                //     //               color: Color.fromARGB(174, 51, 51, 51),
                //     //               fontWeight: FontWeight.w200)),
                //     //       validator: (value) {
                //     //         if (value!.isEmpty) {
                //     //           return "Username cannot be empty";
                //     //         } else if (value.length < 4) {
                //     //           return "Username must be at least 4 characters long";
                //     //         }
                //     //         return null;
                //     //       },
                //     //     ),
                //     //   ),
                //     // ),
                //     // const SizedBox(
                //     //   height: 25,
                //     // ),
                //     // Container(
                //     //   decoration: BoxDecoration(
                //     //     color: Colors.white,
                //     //     borderRadius: BorderRadius.circular(8),
                //     //   ),
                //     //   child: SizedBox(
                //     //     width: 300,
                //     //     child: TextField(
                //     //       obscureText: passwordVisible,
                //     //       decoration: InputDecoration(
                //     //         contentPadding: const EdgeInsets.symmetric(
                //     //             vertical: 4, horizontal: 4),
                //     //         hintText: "Password",
                //     //         labelText: "Password",
                //     //         suffixIcon: IconButton(
                //     //           icon: Icon(passwordVisible
                //     //               ? Icons.visibility_off
                //     //               : Icons.visibility),
                //     //           onPressed: () {
                //     //             setState(
                //     //               () {
                //     //                 passwordVisible = !passwordVisible;
                //     //               },
                //     //             );
                //     //           },
                //     //         ),
                //     //         // alignLabelWithHint: false,
                //     //         // filled: true,
                //     //       ),
                //     //       // keyboardType: TextInputType.visiblePassword,
                //     //       // textInputAction: TextInputAction.done,
                //     //     ),
                //     //   ),
                //     // ),
                //   ],
                // ),
                const SizedBox(
                  height: 30,
                ),
                Material(
                  borderRadius: BorderRadius.circular(25),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(25),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => InfoForm1(),
                        ),
                      );
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
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
