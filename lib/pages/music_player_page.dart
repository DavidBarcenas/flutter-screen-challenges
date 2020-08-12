import 'package:flutter/material.dart';
import 'package:shoes/widgets/player/custom_appbar.dart';
import 'package:shoes/widgets/player/lyrics.dart';
import 'package:shoes/widgets/player/music_player.dart';
import 'package:shoes/widgets/player/title_play.dart';

class MusicPlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: double.infinity,
          height: screenSize.height * 0.75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60)),
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.center,
                  colors: [
                    Color(0xff33333e),
                    Color(0xff201e28),
                  ])),
        ),
        Column(
          children: [CustomAppBar(), MusicPlayer(), TitlePlay(), Lyrics()],
        )
      ],
    ));
  }
}
