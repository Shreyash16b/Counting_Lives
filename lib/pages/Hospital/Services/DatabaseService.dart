import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/scheduler.dart';

class DatabaseService {
  final String? hid;
  DatabaseService(this.hid);

  final CollectionReference hospitalCollection =
      FirebaseFirestore.instance.collection("hospital");

  Future addHospitalData(
      String hospitalName,
      String hospitalAddress,
      String hospitalPhoneNumber,
      int hospitalPincode,
      String countryValue,
      String stateValue,
      String hospitalEmail,
      String cityValue) async {
    return await hospitalCollection.doc(hid).set(
      {
        "hospitalName": hospitalName,
        "hospitalEMail": hospitalEmail,
        "hospitalPhoneNumber": hospitalPhoneNumber,
        "hospitalAddress": hospitalAddress,
        "hospitalPincode": hospitalPincode,
        "hospitalCountry": countryValue,
        "hospitalState": stateValue,
        "hospitalCity": cityValue,
        "hid": hid,
        "fromDay": null,
        "toDay": null,
        "fromTime": null,
        "toTime": null,
        "xray": false,
        "ct": false,
        "mri": false,
        "sonography": false,
        "twod": false,
        "doppler": false,
      },
    );
  }

  Future addHospitalDayTimeService(
    String fromDay,
    String toDay,
    String fromTime,
    String toTime,
    bool xray,
    bool ct,
    bool mri,
    bool sonography,
    bool twod,
    bool doppler,
  ) async {
    return await hospitalCollection.doc(hid).update({
      "fromDay": fromDay,
      "toDay": toDay,
      "fromTime": fromTime,
      "toTime": toTime,
      "xray": xray,
      "ct": ct,
      "mri": mri,
      "sonography": sonography,
      "twod": twod,
      "doppler": doppler,
    });
  }
}
