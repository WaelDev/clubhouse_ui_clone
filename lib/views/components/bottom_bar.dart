import 'package:flutter/material.dart';

import 'start_room_btn.dart';

Widget bottomBar(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    // color: Colors.red,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // SizedBox(width: 100),
        startRoomBtn(),
        // SizedBox(width: 30),
        // InkWell(
        //   onTap: () => print('go to menu'),
        //   child: Icon(
        //     Icons.apps,
        //     size: 30,
        //   ),
        // )
      ],
    ),
  );
}
