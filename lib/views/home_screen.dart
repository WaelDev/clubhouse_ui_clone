import 'package:flutter/material.dart';

import 'components/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1eee5),
      appBar: customAppBar(context, 'fdf'),
      body: Container(
        child: Center(child: Text('home')),
      ),
    );
  }
}
