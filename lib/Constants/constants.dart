import 'package:flutter/material.dart';

class Constants {
  static const Color green1 = Color.fromARGB(255, 0, 212, 170);
  static const Color green2 = Color.fromARGB(255, 170, 228, 0);
  static const Color pink1 = Color.fromARGB(255, 255, 153, 85);
  static const Color pink2 = Color.fromARGB(255, 255, 85, 153);

  static const days = [
    DropdownMenuItem(
      value: 'Monday',
      child: Text(
        "Mon",
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    ),
    DropdownMenuItem(
      value: 'Tuesday',
      child: Text(
        "Tue",
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    ),
    DropdownMenuItem(
      value: 'Wednesday',
      child: Text(
        "Wed",
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    ),
    DropdownMenuItem(
      value: 'Thursday',
      child: Text(
        "Thu",
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    ),
    DropdownMenuItem(
      value: 'Friday',
      child: Text(
        "Fri",
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    ),
    DropdownMenuItem(
      value: 'Saturday',
      child: Text(
        "Sat",
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    ),
    DropdownMenuItem(
      value: 'Sunday',
      child: Text(
        "Sun",
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    ),
  ];

  static const states = [
    DropdownMenuItem(
      value: 's1',
      child: Text(
        "a",
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    ),
    DropdownMenuItem(
      value: 's2',
      child: Text(
        "ab",
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    ),
    DropdownMenuItem(
      value: 's3',
      child: Text(
        "abc",
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    ),
    DropdownMenuItem(
      value: 's4',
      child: Text(
        "abcd",
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    ),
  ];
}
