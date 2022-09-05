import 'package:clubhouse_clone/views/components/speaker.dart';
import 'package:clubhouse_clone/views/profile_screen.dart';
import 'package:flutter/material.dart';

class RoomScreen extends StatelessWidget {
  const RoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1eee5),
      appBar: buildAppBar(context),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Startup Club'.toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                    Icon(
                      Icons.home,
                      color: Colors.green,
                      size: 15,
                    ),
                  ],
                ),
                Text(
                  'Pitch practice w/Guest VSs & Investors',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildSpeaker(
                      moderator: true,
                      name: 'Chris',
                      imagePath: 'assets/images/user.jpg',
                      isSpeaking: false,
                    ),
                    buildSpeaker(
                      moderator: true,
                      name: 'Lila',
                      imagePath: 'assets/images/profile23.jpg',
                      isSpeaking: false,
                    ),
                    buildSpeaker(
                      moderator: false,
                      name: 'Geoff',
                      imagePath: 'assets/images/profile22.jfif',
                      isSpeaking: false,
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildSpeaker(
                      moderator: false,
                      name: 'Sam',
                      imagePath: 'assets/images/profile99.jfif',
                      isSpeaking: false,
                    ),
                    buildSpeaker(
                      moderator: false,
                      name: 'Tarek',
                      imagePath: 'assets/images/profile25.jfif',
                      isSpeaking: false,
                    ),
                    buildSpeaker(
                      moderator: false,
                      name: 'Carla',
                      imagePath: 'assets/images/profile24.jfif',
                      isSpeaking: true,
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildSpeaker(
                      moderator: false,
                      name: 'Sara',
                      imagePath: 'assets/images/profile88.jfif',
                      isSpeaking: false,
                    ),
                    buildSpeaker(
                      moderator: false,
                      name: 'Toni',
                      imagePath: 'assets/images/profile77.jfif',
                      isSpeaking: false,
                    ),
                    buildSpeaker(
                      moderator: false,
                      name: 'Brandon',
                      imagePath: 'assets/images/profile55.jfif',
                      isSpeaking: false,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 60,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.grey.shade100,
                  child: Row(
                    children: [
                      Icon(Icons.mic_off, size: 19),
                      SizedBox(width: 10),
                      Container(
                        width: 350,
                        child: Text(
                          'You\'re in the audience or mute. Raise your hand anytime if you\'d like to chime in!',
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.handyman,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
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
            Icons.file_copy_outlined,
            color: Colors.black,
            size: 25,
          ),
          onPressed: () {
            print('go to calender');
          },
        ),
        SizedBox(width: 15),
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
        SizedBox(width: 15),
      ],
    );
  }
}
