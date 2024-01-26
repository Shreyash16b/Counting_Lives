import 'package:areeb_s_application2/core/app_export.dart';
import 'package:areeb_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:areeb_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:areeb_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:areeb_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:areeb_s_application2/widgets/custom_elevated_button.dart';
import 'package:areeb_s_application2/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ServiceProfileReviewPage extends StatelessWidget {
  const ServiceProfileReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Username',
                    style: TextStyle(fontSize: 20),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, size: 16,),
                      Icon(Icons.star, size: 16,),
                      Icon(Icons.star, size: 16,),
                      Icon(Icons.star, size: 16,),
                      Icon(Icons.star_outline, size: 16,),
                    ],
                  ),
                  Text('Review content to be posted by the user', style: TextStyle(color: Colors.black),)
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Username',
                    style: TextStyle(fontSize: 20),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, size: 16,),
                      Icon(Icons.star, size: 16,),
                      Icon(Icons.star, size: 16,),
                      Icon(Icons.star, size: 16,),
                      Icon(Icons.star_outline, size: 16,),
                    ],
                  ),
                  Text('Review content to be posted by the user', style: TextStyle(color: Colors.black),)
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Username',
                    style: TextStyle(fontSize: 20),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, size: 16,),
                      Icon(Icons.star, size: 16,),
                      Icon(Icons.star, size: 16,),
                      Icon(Icons.star, size: 16,),
                      Icon(Icons.star_outline, size: 16,),
                    ],
                  ),
                  Text('Review content to be posted by the user', style: TextStyle(color: Colors.black),)
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Username',
                    style: TextStyle(fontSize: 20),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, size: 16,),
                      Icon(Icons.star, size: 16,),
                      Icon(Icons.star, size: 16,),
                      Icon(Icons.star, size: 16,),
                      Icon(Icons.star_outline, size: 16,),
                    ],
                  ),
                  Text('Review content to be posted by the user', style: TextStyle(color: Colors.black),)
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
