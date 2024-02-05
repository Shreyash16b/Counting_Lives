import 'package:counting_lives/core/app_export.dart';
import 'package:counting_lives/widgets/app_bar/appbar_leading_image.dart';
import 'package:counting_lives/widgets/app_bar/appbar_title.dart';
import 'package:counting_lives/widgets/app_bar/appbar_trailing_image.dart';
import 'package:counting_lives/widgets/app_bar/custom_app_bar.dart';
import 'package:counting_lives/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ServiceProfileDetailsPage extends StatelessWidget {
  const ServiceProfileDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Details of the services and the hospital to be entered.\nFor Example : Hospital Name,"
        "address, area landmark, specialisations, achievements in medical fields"),
      ),
    );
  }
}
