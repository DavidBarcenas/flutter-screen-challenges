import 'package:flutter/material.dart';
import 'package:shoes/widgets/player/custom_appbar.dart';
import 'package:shoes/widgets/player/music_player.dart';

class MusicPlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [CustomAppBar(), MusicPlayer()],
    ));
  }
}
