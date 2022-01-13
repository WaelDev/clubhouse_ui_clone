import 'package:flutter/material.dart';

AppBar customAppBar(BuildContext context, String title) {
  return AppBar(
    backgroundColor: Color(0xfff1eee5),
    elevation: 0,
    leading: IconButton(
      icon: Icon(
        Icons.search,
        color: Colors.black,
        size: 32,
      ),
      onPressed: () {
        print('search');
      },
    ),
    actions: [
      IconButton(
        icon: Icon(
          Icons.drafts_outlined,
          color: Colors.black,
          size: 32,
        ),
        onPressed: () {
          print('go to invites');
        },
      ),
      SizedBox(width: 15),
      IconButton(
        icon: Icon(
          Icons.event_note,
          color: Colors.black,
          size: 32,
        ),
        onPressed: () {
          print('go to calender');
        },
      ),
      SizedBox(width: 15),
      IconButton(
        icon: Icon(
          Icons.notifications_outlined,
          color: Colors.black,
          size: 32,
        ),
        onPressed: () {
          print('go to notifications');
        },
      ),
      SizedBox(width: 15),
      InkWell(
        child: CircleAvatar(
          backgroundImage: AssetImage(
            'assets/images/profile24.jfif',
          ),
          radius: 20,
        ),
        onTap: () {
          print('go to profile');
        },
      ),
      SizedBox(width: 20),
    ],
  );
}
