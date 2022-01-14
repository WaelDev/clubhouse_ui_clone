import 'package:flutter/material.dart';

Widget startRoomBtn() {
  return InkWell(
    onTap: () => print('start a Room'),
    child: Container(
      width: 180,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21),
        color: Color(0xff56ab68),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.add,
            color: Colors.white,
          ),
          SizedBox(width: 5),
          Text(
            'Start a room',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}
