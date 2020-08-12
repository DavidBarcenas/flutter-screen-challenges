import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes/model/audio_player_model.dart';

class TitlePlay extends StatefulWidget {
  @override
  _TitlePlayState createState() => _TitlePlayState();
}

class _TitlePlayState extends State<TitlePlay>
    with SingleTickerProviderStateMixin {
  bool isPlaying = false;
  bool firstTime = true;
  AnimationController playAnimstion;
  final assetAudioPlayer = new AssetsAudioPlayer();

  @override
  void initState() {
    this.playAnimstion = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 300));
    super.initState();
  }

  @override
  void dispose() {
    this.playAnimstion.dispose();
    super.dispose();
  }

  void open() {
    final audioPlayerModel =
        Provider.of<AudioPlayerModel>(context, listen: false);
    assetAudioPlayer.open(Audio('assets/Breaking-Benjamin-Far-Away.mp3'));

    assetAudioPlayer.currentPosition.listen((event) {
      audioPlayerModel.songCurrent = event;
    });

    assetAudioPlayer.current.listen((event) {
      audioPlayerModel.songDuration = event.audio.duration;
    });
  }

  @override
  Widget build(BuildContext context) {
    final audioPlayerModel = Provider.of<AudioPlayerModel>(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      margin: EdgeInsets.only(top: 40),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                'Far Away',
                style: TextStyle(
                    fontSize: 30, color: Colors.white.withOpacity(0.8)),
              ),
              Text(
                '-Breaking Benjamin-',
                style: TextStyle(
                    fontSize: 15, color: Colors.white.withOpacity(0.6)),
              )
            ],
          ),
          Spacer(),
          FloatingActionButton(
            onPressed: () {
              if (this.isPlaying) {
                this.playAnimstion.reverse();
                this.isPlaying = false;
                audioPlayerModel.controller.stop();
              } else {
                this.playAnimstion.forward();
                this.isPlaying = true;
                audioPlayerModel.controller.repeat();
              }

              if (this.firstTime) {
                this.open();
                this.firstTime = false;
              } else {
                assetAudioPlayer.playOrPause();
              }
            },
            backgroundColor: Color(0xfff8cb51),
            child: AnimatedIcon(
                icon: AnimatedIcons.play_pause, progress: this.playAnimstion),
          )
        ],
      ),
    );
  }
}
