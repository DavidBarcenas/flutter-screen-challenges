import 'package:flutter/material.dart';

class TitlePlay extends StatefulWidget {
  @override
  _TitlePlayState createState() => _TitlePlayState();
}

class _TitlePlayState extends State<TitlePlay>
    with SingleTickerProviderStateMixin {
  bool isPlaying = false;
  AnimationController playAnimstion;

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

  @override
  Widget build(BuildContext context) {
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
              } else {
                this.playAnimstion.forward();
                this.isPlaying = true;
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
