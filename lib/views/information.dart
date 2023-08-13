import 'package:flutter/material.dart';

TextStyle titleFont = const TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 15.0,
  color: Colors.white,
);
TextStyle infoFont = const TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 15.0,
  color: Color.fromARGB(255, 211, 208, 208),
);
Widget information(
    String wind, String humidity, String presure, String feelLike) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(18.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Wind',
                  style: titleFont,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Pressure',
                  style: titleFont,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$wind',
                  style: infoFont,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Text(
                  '$presure',
                  style: infoFont,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Humidity',
                  style: titleFont,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Feel Like',
                  style: titleFont,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$humidity',
                  style: infoFont,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Text(
                  '$feelLike',
                  style: infoFont,
                ),
              ],
            ),
          ],
        )
      ],
    ),
  );
}
