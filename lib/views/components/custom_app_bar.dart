import 'package:clubhouse_clone/views/profile_screen.dart';
import 'package:flutter/material.dart';

import 'notification_btn.dart';

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
      notificationBtn(),
      SizedBox(width: 20),
      InkWell(
        child: CircleAvatar(
          backgroundImage: AssetImage(
            'assets/images/user.jpg',
          ),
          radius: 16,
        ),
        onTap: () {
          print('go to profile');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProfileScreen(),
            ),
          );
        },
      ),
      SizedBox(width: 20),
    ],
  );
}
