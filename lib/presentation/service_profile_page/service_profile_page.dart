import 'dart:collection';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:counting_lives/core/app_export.dart';
import 'package:counting_lives/widgets/custom_elevated_button.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class ServiceProfilePage extends StatefulWidget {
  final String hid;
  const ServiceProfilePage({super.key, required this.hid});

  @override
  ServiceProfilePageState createState() => ServiceProfilePageState();
}

class ServiceProfilePageState extends State<ServiceProfilePage>
    with AutomaticKeepAliveClientMixin<ServiceProfilePage> {
  String? hospitalName;
  String? hospitalAddress;
  String? toDay;
  String? fromDay;
  String? toTime;
  String? fromTime;

  Future<String> getName() async {
    final userCreds = await FirebaseFirestore.instance
        .collection('hospital')
        .doc(widget.hid)
        .get();

    return userCreds.data()!['hospitalName'];
  }

  Future<String> getAddress() async {
    final userCreds = await FirebaseFirestore.instance
        .collection('hospital')
        .doc(widget.hid)
        .get();

    return userCreds.data()!['hospitalAddress'];
  }

  Future<String> getfromDay() async {
    final userCreds = await FirebaseFirestore.instance
        .collection('hospital')
        .doc(widget.hid)
        .get();

    return userCreds.data()!['fromDay'];
  }

  Future<String> gettoDay() async {
    final userCreds = await FirebaseFirestore.instance
        .collection('hospital')
        .doc(widget.hid)
        .get();

    return userCreds.data()!['toDay'];
  }

  Future<String> getfromTime() async {
    final userCreds = await FirebaseFirestore.instance
        .collection('hospital')
        .doc(widget.hid)
        .get();

    return userCreds.data()!['fromTime'];
  }

  Future<String> gettoTime() async {
    final userCreds = await FirebaseFirestore.instance
        .collection('hospital')
        .doc(widget.hid)
        .get();

    return userCreds.data()!['toTime'];
  }

  @override
  void initState() {
    // TODO: implement initState
    getName().then((value) {
      setState(() {
        hospitalName = value;
      });
    });
    getAddress().then((value) {
      setState(() {
        hospitalAddress = value;
      });
    });
    getfromDay().then((value) {
      setState(() {
        fromDay = value;
      });
    });
    gettoDay().then((value) {
      setState(() {
        toDay = value;
      });
    });
    getfromTime().then((value) {
      setState(() {
        fromTime = value;
      });
    });
    gettoTime().then((value) {
      setState(() {
        toTime = value;
      });
    });
    super.initState();
  }

  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.whiteA700,
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 30),
              _buildOpen(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOpen(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/image_not_found.png',
                        height: 70.v,
                        width: 70.h,
                      ),
                      const SizedBox( width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          (hospitalName == null)
                              ? CircularProgressIndicator()
                              : Text(
                                  hospitalName!,
                                  style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                          (hospitalAddress == null)
                              ? CircularProgressIndicator()
                              : Text(
                                  hospitalAddress!,
                                  style: TextStyle(color: Colors.black),
                                ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 13.v),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(
                left: 18.h,
                right: 23.h,
              ),
              child: (fromDay == null || toDay == null)
                  ? CircularProgressIndicator()
                  : Text("From $fromDay to $toDay", style: TextStyle(color: Colors.black, fontSize: 20),),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(
                left: 18.h,
                right: 23.h,
              ),
              child: (fromDay == null || toDay == null)
                  ? CircularProgressIndicator()
                  : Text("From $fromTime to $toTime", style: TextStyle(color: Colors.black, fontSize: 20),),
            ),
          ],
        ),
      ],
    );
  }

  /// Common widget
}
