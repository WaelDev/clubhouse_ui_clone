import 'package:flutter/material.dart';

Widget buildSpeaker({
  required bool moderator,
  required String name,
  required String imagePath,
  required bool isSpeaking,
}) {
  return Column(
    children: [
      Stack(
        children: [
          Container(
            decoration: isSpeaking
                ? BoxDecoration(
                    borderRadius: BorderRadius.circular(38),
                    border: Border.all(color: Colors.grey.shade400, width: 3),
                  )
                : BoxDecoration(),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                border: Border.all(color: Colors.white, width: 2.5),
              ),
              child: ClipRRect(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                borderRadius: BorderRadius.circular(35),
                child: Image.asset(
                  imagePath,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          !isSpeaking
              ? Positioned(
                  bottom: -2,
                  right: -5,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.mic_off,
                      size: 19,
                      color: Colors.black,
                    ),
                    radius: 15,
                  ),
                )
              : SizedBox(width: 0),
        ],
      ),
      SizedBox(height: 7),
      Row(
        children: [
          moderator
              ? Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: Icon(
                    Icons.stars_rounded,
                    color: Colors.green,
                    size: 17,
                  ),
                )
              : SizedBox(width: 0),
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ],
  );
}
