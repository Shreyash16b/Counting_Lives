import 'package:counting_lives/pages/User/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:counting_lives/presentation/services_screen/services_screen.dart';

class OnboardFinal extends StatelessWidget {
  const OnboardFinal({super.key});

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
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 100,
                    width: 230,
                    child: const Text(
                      "Superb!\nYou are done",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 60),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset('assets/images/onboard_final_2.svg'),
                                      SvgPicture.asset('assets/images/onboard_final_1.svg'),
                                    ],
                                  ),
                                  const SizedBox(width: 10,),
                                  SvgPicture.asset('assets/images/onboard_final_3.svg')
                                ],
                              ),
                              const SizedBox(height: 20,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset('assets/images/onboard_final_2.svg'),
                                      SvgPicture.asset('assets/images/onboard_final_1.svg'),
                                    ],
                                  ),
                                  const SizedBox(width: 10,),
                                  SvgPicture.asset('assets/images/onboard_final_3.svg')
                                ],
                              ),
                              const SizedBox(height: 20,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset('assets/images/onboard_final_2.svg'),
                                      SvgPicture.asset('assets/images/onboard_final_1.svg'),
                                    ],
                                  ),
                                  const SizedBox(width: 10,),
                                  SvgPicture.asset('assets/images/onboard_final_3.svg')
                                ],
                              ),
                              const SizedBox(height: 20,),
                            ],
                          ),
                          SvgPicture.asset('assets/images/onboard_final_5.svg'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  Material(
                    borderRadius: BorderRadius.circular(25),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(25),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => UserHome(),
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
                                "Begin",
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
          ],
        ),
      ),
    );
  }
}
