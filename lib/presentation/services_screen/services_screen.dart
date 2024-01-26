// import '../services_screen/widgets/diagnosticcenters_item_widget.dart';
// import 'package:areeb_s_application2/core/app_export.dart';
// import 'package:areeb_s_application2/widgets/app_bar/appbar_leading_image.dart';
// import 'package:areeb_s_application2/widgets/app_bar/appbar_title.dart';
// import 'package:areeb_s_application2/widgets/app_bar/appbar_trailing_image.dart';
// import 'package:areeb_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:areeb_s_application2/presentation/service_profile_tab_container_screen/service_profile_tab_container_screen.dart';
import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  void _onSelectText(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => ServiceProfileTabContainerScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diagnostic Centers'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Color(0xFFAAD400), Color(0xFF00D4AA)])),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    label: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Sort'),
                    ),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    icon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.sort),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/image_not_found.png',
                      height: 150,
                      width: 150,
                      alignment: Alignment.centerLeft,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () => _onSelectText(context),
                          child: Text(
                            'Hospital Name',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.circle_outlined),
                            Text(
                              'Services',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on),
                            Text('Address of the hospital',
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.alarm),
                            Text('Working Time period',
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/image_not_found.png',
                    height: 150,
                    width: 150,
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Hospital Name',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.circle_outlined),
                          Text(
                            'Services',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on),
                          Text('Address of the hospital',
                              style: TextStyle(color: Colors.black)),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.alarm),
                          Text('Working Time period',
                              style: TextStyle(color: Colors.black)),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Card(
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/image_not_found.png',
                    height: 150,
                    width: 150,
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Hospital Name',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.circle_outlined),
                          Text(
                            'Services',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on),
                          Text('Address of the hospital',
                              style: TextStyle(color: Colors.black)),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.alarm),
                          Text('Working Time period',
                              style: TextStyle(color: Colors.black)),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Card(
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/image_not_found.png',
                    height: 150,
                    width: 150,
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Hospital Name',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.circle_outlined),
                          Text(
                            'Services',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on),
                          Text('Address of the hospital',
                              style: TextStyle(color: Colors.black)),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.alarm),
                          Text('Working Time period',
                              style: TextStyle(color: Colors.black)),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Card(
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/image_not_found.png',
                    height: 150,
                    width: 150,
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Hospital Name',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.circle_outlined),
                          Text(
                            'Services',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on),
                          Text('Address of the hospital',
                              style: TextStyle(color: Colors.black)),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.alarm),
                          Text('Working Time period',
                              style: TextStyle(color: Colors.black)),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Card(
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/image_not_found.png',
                    height: 150,
                    width: 150,
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Hospital Name',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.circle_outlined),
                          Text(
                            'Services',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on),
                          Text('Address of the hospital',
                              style: TextStyle(color: Colors.black)),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.alarm),
                          Text('Working Time period',
                              style: TextStyle(color: Colors.black)),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
