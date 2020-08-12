import 'package:flutter/material.dart';
import 'package:shoes/helpers/helpers.dart';

class Lyrics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: ListWheelScrollView(
            physics: BouncingScrollPhysics(),
            itemExtent: getLyrics().length * 1.0,
            diameterRatio: 1.8,
            children: getLyrics()
                .map((line) => Text(
                      line,
                      style: TextStyle(color: Colors.white.withOpacity(0.8)),
                    ))
                .toList()),
      ),
    );
  }
}
