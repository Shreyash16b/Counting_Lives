import 'package:flutter/material.dart';

class tp extends StatefulWidget {
  const tp({super.key});

  @override
  State<tp> createState() => _tpState();
}

class _tpState extends State<tp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Text("Hi");
                }),
          ),
        ],
      ),
    );
  }
}
