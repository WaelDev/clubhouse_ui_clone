import 'package:flutter/material.dart';

Widget invitesPopUp() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
    ),
    width: double.infinity,
    height: 100,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'You now have 5 invites!',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text('Who else would be a great addition'),
        Text('to your Clubhouse community?'),
      ],
    ),
  );
}
