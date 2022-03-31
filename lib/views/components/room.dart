import 'package:clubhouse_clone/views/room_screen.dart';
import 'package:flutter/material.dart';

Widget room(BuildContext context) {
  return InkWell(
    onTap: () => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RoomScreen(),
      ),
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      width: double.infinity,
      // height: 100,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
              width: 70,
              padding: const EdgeInsets.only(top: 10),
              child: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile24.jfif'),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile25.jfif'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Max Goldberg',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 7),
                      Icon(
                        Icons.chat_bubble_outline,
                        size: 16,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(height: 7),
                  Row(
                    children: [
                      Text(
                        'Greg Fleishman',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 7),
                      Icon(
                        Icons.chat_bubble_outline,
                        size: 16,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(height: 7),
                  Row(
                    children: [
                      Text(
                        'Jason H. Karp',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 7),
                      Icon(
                        Icons.chat_bubble_outline,
                        size: 16,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(height: 7),
                  Row(
                    children: [
                      Text(
                        'Kat Cole',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 7),
                      Icon(
                        Icons.chat_bubble_outline,
                        size: 16,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(height: 7),
                  Row(
                    children: [
                      Text(
                        'Swan Sit',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 7),
                      // Icon(Icons.chat_bubble_outline),
                    ],
                  ),
                  SizedBox(height: 7),
                  Row(
                    children: [
                      Text(
                        'Shadi Kourosh MD MPH',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 7),
                      // Icon(Icons.chat_bubble_outline),
                    ],
                  ),
                  SizedBox(height: 7),
                  Row(
                    children: [
                      Text(
                        '142',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.person,
                        size: 16,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 7),
                      Text(
                        '/',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 7),
                      Text(
                        '10',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 7),
                      Icon(
                        Icons.chat_bubble,
                        size: 16,
                        color: Colors.grey,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
