import 'package:cloud_firestore/cloud_firestore.dart';

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
    return await hospitalCollection.doc(hid).set({
      "hospitalName" : hospitalName,
      "hospitalEMail" : hospitalEmail,
      "hospitalPhoneNumber" : hospitalPhoneNumber,
      "hospitalAddress" : hospitalAddress,
      "hospitalPincode": hospitalPincode,
      "hospitalCountry" : countryValue,
      "hospitalState" : stateValue,
      "hospitalCity" : cityValue,
      "hid" : hid
    });
  }
}
