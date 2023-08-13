import 'package:flutter/material.dart';

Widget weather(IconData icon, String temerature, String location) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.orange,
          size: 65.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          "$temerature",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 35.0,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          '$location',
          style: const TextStyle(
            color: Color.fromARGB(255, 199, 191, 191),
            fontSize: 20.0,
          ),
        )
      ],
    ),
  );
}
