import 'package:flutter/material.dart';
import 'package:counting_lives/presentation/User_SignIn.dart';

class Welcome_1 extends StatelessWidget {
  const Welcome_1({super.key});

  moveToUserSignIn(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) {
          return User_SignIn();
        },
      ),
    );
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
              height: 15,
            ),
            Container(
              // height: double.infinity,
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
              child: Column(children: [
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 150,
                  width: 230,
                  child: const Text(
                    "Easily find doctors for your illness",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 32, color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Align(
                  alignment: FractionalOffset(0.3, 1.5),
                  child: Text(
                    "Login as",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: const FractionalOffset(0.3, 0.6),
                  child: Material(
                    borderRadius: BorderRadius.circular(25),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(25),
                      onTap: () => moveToUserSignIn(context),
                      child: Container(
                        width: 150,
                        height: 50,
                        alignment: Alignment.center,
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "User",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 0, 212, 170)),
                              ),
                              Icon(Icons.arrow_forward_outlined,
                                  color: Color.fromARGB(255, 0, 212, 170))
                            ]),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: const FractionalOffset(0.3, 0.6),
                  child: Material(
                    borderRadius: BorderRadius.circular(25),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(25),
                      onTap: () => moveToUserSignIn(context),
                      child: Container(
                        width: 150,
                        height: 50,
                        alignment: Alignment.center,
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Doctor",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 0, 212, 170)),
                              ),
                              Icon(Icons.arrow_forward_outlined,
                                  color: Color.fromARGB(255, 0, 212, 170))
                            ]),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: const FractionalOffset(0.3, 0.6),
                  child: Material(
                    borderRadius: BorderRadius.circular(25),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(25),
                      onTap: () => moveToUserSignIn(context),
                      child: Container(
                        width: 150,
                        height: 50,
                        alignment: Alignment.center,
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Hospital",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 0, 212, 170)),
                              ),
                              Icon(Icons.arrow_forward_outlined,
                                  color: Color.fromARGB(255, 0, 212, 170))
                            ]),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  "assets/images/Doc_Welcome_1.png",
                  fit: BoxFit.scaleDown,
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
