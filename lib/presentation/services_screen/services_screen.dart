// import '../services_screen/widgets/diagnosticcenters_item_widget.dart';
// import 'package:counting_lives/core/app_export.dart';
// import 'package:counting_lives/widgets/app_bar/appbar_leading_image.dart';
// import 'package:counting_lives/widgets/app_bar/appbar_title.dart';
// import 'package:counting_lives/widgets/app_bar/appbar_trailing_image.dart';
// import 'package:counting_lives/widgets/app_bar/custom_app_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:counting_lives/presentation/service_profile_tab_container_screen/service_profile_tab_container_screen.dart';
import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  final String uid;
  const ServicesScreen({super.key, required this.uid});

  void _onSelectText(BuildContext context, String hid) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => ServiceProfileTabContainerScreen(
          hid: hid,
        ),
      ),
    );
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
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Align(
            //       alignment: Alignment.centerRight,
            //       child: ElevatedButton.icon(
            //         onPressed: () {},
            //         label: Padding(
            //           padding: const EdgeInsets.all(8.0),
            //           child: Text('Sort'),
            //         ),
            //         style:
            //             ElevatedButton.styleFrom(backgroundColor: Colors.white),
            //         icon: Padding(
            //           padding: const EdgeInsets.all(8.0),
            //           child: Icon(Icons.sort),
            //         ),
            //       )),
            // ),
            StreamBuilder(
              stream:
                  FirebaseFirestore.instance.collection('hospital').snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                  return const Text('Nothing here');
                }
                if (snapshot.hasError) {
                  return const Text('Something went wrong');
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Text("Loading");
                }
                var enteredlist = snapshot.data!.docs;
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: enteredlist.length,
                  itemBuilder: (context, index) {
                    return Padding(
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
                                  onPressed: () => _onSelectText(context,enteredlist[index].id),
                                  child: Text(
                                    enteredlist[index]['hospitalName'],
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
                                    Text(
                                      "${enteredlist[index]['hospitalCity']},\n${enteredlist[index]['hospitalState']}",
                                      style: TextStyle(color: Colors.black),
                                      maxLines: 2,
                                      overflow: TextOverflow.fade,
                                    ),
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
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
