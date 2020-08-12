import 'package:flutter/material.dart';

class TitlePlay extends StatelessWidget {
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
            onPressed: () {},
            backgroundColor: Color(0xfff8cb51),
            child: Icon(Icons.play_arrow),
          )
        ],
      ),
    );
  }
}
