import 'package:flutter/material.dart';

Widget reminderRooms() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Color(0xffe6e2d6),
    ),
    width: double.infinity,
    height: 80,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 30),
            Text(
              '1:00 pm ',
              style: TextStyle(
                fontSize: 14,
                color: Colors.brown,
              ),
            ),
            SizedBox(width: 20),
            Text('HOW TO NOT DIE ALONE Book L..'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 30),
            Text(
              '3:00 pm ',
              style: TextStyle(
                fontSize: 14,
                color: Colors.brown,
              ),
            ),
            SizedBox(width: 20),
            Text('The life and ideas of Eric Weinstei...'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 30),
            Text(
              '3:00 am ',
              style: TextStyle(
                fontSize: 14,
                color: Colors.brown,
              ),
            ),
            SizedBox(width: 20),
            Text('THE SCOOP: Supplements...'),
          ],
        )
      ],
    ),
  );
}
