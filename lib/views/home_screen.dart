import 'components/invites_pop_up.dart';
import 'package:flutter/material.dart';

import 'components/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1eee5),
      appBar: customAppBar(context, 'fdf'),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            invitesPopUp(),
          ],
        ),
      ),
    );
  }
}
