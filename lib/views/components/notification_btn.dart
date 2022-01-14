import 'package:flutter/material.dart';

Widget notificationBtn() {
  return InkWell(
    onTap: () => print('go to notification screen'),
    child: Container(
      child: Center(
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Icon(
              Icons.notifications_outlined,
              color: Colors.black,
              size: 32,
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 8,
              child: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 6,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
