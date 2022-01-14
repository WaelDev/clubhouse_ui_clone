import 'package:flutter/material.dart';

import 'start_room_btn.dart';

Widget bottomBar() {
  return Row(
    children: [
      SizedBox(width: 100),
      startRoomBtn(),
      SizedBox(width: 50),
      InkWell(
        onTap: () => print('go to menu'),
        child: Icon(
          Icons.apps,
          size: 30,
        ),
      )
    ],
  );
}
