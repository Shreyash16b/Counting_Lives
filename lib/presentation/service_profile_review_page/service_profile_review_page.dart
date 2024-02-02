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
