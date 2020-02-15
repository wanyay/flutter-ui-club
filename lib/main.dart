import 'package:club_live/screens/new_feed.dart';
import 'package:flutter/material.dart';

void main() => runApp(ClubLive());

class ClubLive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {NewFeed.id: (context) => NewFeed()},
    );
  }
}
