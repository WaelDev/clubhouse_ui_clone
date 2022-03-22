import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1eee5),
      appBar: AppBar(
        backgroundColor: Color(0xfff1eee5),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.mark_email_unread,
              color: Colors.black,
              size: 25,
            ),
            onPressed: () {
              print('go to calender');
            },
          ),
          SizedBox(width: 15),
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
              size: 25,
            ),
            onPressed: () {
              print('go to calender');
            },
          ),
          SizedBox(width: 15),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(
                'assets/images/profile24.jfif',
              ),
              radius: 35,
            ),
            SizedBox(height: 10),
            Text(
              'Phimippe Hong',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 7),
            Text(
              '@Phimippehong',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 13,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text('0 followers'),
                SizedBox(width: 40),
                Text('64 following'),
              ],
            ),
            SizedBox(height: 30),
            TextButton(
              onPressed: () => print('add a bio'),
              child: Text('Add a bio'),
            ),
          ],
        ),
      ),
    );
  }
}
