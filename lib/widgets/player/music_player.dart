import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes/model/audio_player_model.dart';

class MusicPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      margin: EdgeInsets.only(top: 70),
      child: Row(
        children: [_MusicDiscImage(), _ProgressBar()],
      ),
    );
  }
}

class _ProgressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            '4:30',
            style: TextStyle(color: Colors.white.withOpacity(0.5)),
          ),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: 3,
                height: 230,
                color: Colors.white.withOpacity(0.1),
              ),
              Positioned(
                bottom: 10,
                child: Container(
                  width: 3,
                  height: 120,
                  color: Colors.white.withOpacity(0.8),
                ),
              )
            ],
          ),
          Text(
            '4:30',
            style: TextStyle(color: Colors.white.withOpacity(0.5)),
          )
        ],
      ),
    );
  }
}

class _MusicDiscImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final audioPlayerModel = Provider.of<AudioPlayerModel>(context);

    return Container(
      margin: EdgeInsets.only(right: 50),
      padding: EdgeInsets.all(20),
      width: 250,
      height: 250,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(200),
          child: Stack(alignment: Alignment.center, children: [
            SpinPerfect(
                animate: false,
                duration: Duration(seconds: 10),
                infinite: true,
                manualTrigger: true,
                controller: (animationController) =>
                    audioPlayerModel.controller = animationController,
                child: Image(image: AssetImage('assets/img/aurora.jpg'))),
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.circular(100)),
            ),
            Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                  color: Color(0xff1c1c25),
                  borderRadius: BorderRadius.circular(100)),
            )
          ])),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              colors: [Color(0xff484750), Color(0xff1e1c24)])),
    );
  }
}
