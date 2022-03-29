import 'package:clubhouse_clone/views/components/reminder_rooms.dart';

import 'components/bottom_bar.dart';
import 'components/invites_pop_up.dart';
import 'package:flutter/material.dart';

import 'components/custom_app_bar.dart';
import 'components/room.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1eee5),
      appBar: customAppBar(context, 'fdf'),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  invitesPopUp(context),
                  SizedBox(height: 20),
                  reminderRooms(),
                  SizedBox(height: 20),
                  room(),
                  SizedBox(height: 20),
                  room(),
                  SizedBox(height: 20),
                  room(),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            child: bottomBar( context),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child:
            Container(
              height: 45,
              child: InkWell(
                onTap: () => print('go to menu'),
                child: Icon(
                  Icons.apps,
                  size: 30,
                ),
              ),
            )
          ),
        ],
      ),
    );
  }
}
