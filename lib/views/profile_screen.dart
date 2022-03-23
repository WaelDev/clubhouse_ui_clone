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
                'assets/images/user.jpg',
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
            SizedBox(height: 20),
            Row(
              children: [
                InkWell(
                  onTap: () => print('go to twitter account'),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/twitter3.png',
                        scale: 3.5,
                      ),
                      Text('philippehong'),
                    ],
                  ),
                ),
                SizedBox(width: 30),
                InkWell(
                  onTap: () => print('go to twitter account'),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/instagram.png',
                        scale: 4,
                      ),
                      Text('   Add Instagram'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 35),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/hack.jfif',
                  ),
                  radius: 20,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Joined 3 Feb 2021'),
                    Text('Nominated by David Wang'),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
