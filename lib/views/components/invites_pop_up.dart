import 'package:flutter/material.dart';

Widget invitesPopUp(BuildContext context) {
  return Stack(
    clipBehavior: Clip.none,
    children: [
      Positioned(
        top: -20,
        left: 160,
        child: Image.asset(
          'assets/images/triangle.png',
          scale: 7,
          color: Colors.white,
        ),
      ),
      Container(
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
      ),
    ],
  );
}
