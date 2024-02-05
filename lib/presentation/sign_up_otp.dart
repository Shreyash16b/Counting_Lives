import 'dart:math';

import 'package:counting_lives/presentation/sign_up_success.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

final _firebase = FirebaseAuth.instance;
class SignUpOTP extends StatefulWidget {
  const SignUpOTP({super.key});

  @override
  State<SignUpOTP> createState() => _SignUpOTPState();
}

class _SignUpOTPState extends State<SignUpOTP> {
  OtpFieldController otpController = OtpFieldController();
  var OTPPin;
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
              height: 755,
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
                  height: 30,
                ),
                Container(
                  height: 100,
                  width: 230,
                  child: const Text(
                    "Enter the\nOTP",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 32, color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                OTPTextField(
                  controller: otpController,
                  length: 6,
                  width: MediaQuery.of(context).size.width,
                  fieldWidth: 60,
                  style: TextStyle(fontSize: 17),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.underline,
                  onCompleted: (pin) {
                    OTPPin = pin;
                    print("Completed: " + pin);
                    print(pin);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Material(
                  borderRadius: BorderRadius.circular(25),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(25),
                    onTap: () {
                      // try{
                      //   PhoneAuthCredential credential = await PhoneAuthProvider.credential(verificationId: widget.verificationid, smsCode: OTPPin.toString());
                      //   _firebase.signInWithCredential(credential).then((value) => Navigator.of(context).push(
                      //     MaterialPageRoute(
                      //       builder: (ctx) => SignUpSuccess(),
                      //     ),
                      //   ));
                      // } catch(error){
                        
                      // }
                        
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
