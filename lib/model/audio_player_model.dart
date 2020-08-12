import 'package:flutter/material.dart';

class AudioPlayerModel with ChangeNotifier {
  bool _playing = false;
  Duration _songDuration = new Duration(milliseconds: 0);
  Duration _songCurrent = new Duration(milliseconds: 0);
  AnimationController _controller;

  String get songTotalDuration => this.printDuration(this._songDuration);
  String get songCurrentTotalDuration => this.printDuration(this._songCurrent);

  double get percentage => (this._songDuration.inSeconds > 0)
      ? this._songCurrent.inSeconds / this._songDuration.inSeconds
      : 0;

  set controller(AnimationController value) {
    this._controller = value;
  }

  AnimationController get controller => this._controller;

  bool get playing => this._playing;
  set playing(bool value) {
    this._playing = value;
    notifyListeners();
  }

  Duration get songDuration => this._songDuration;
  set songDuration(Duration value) {
    this._songDuration = value;
    notifyListeners();
  }

  Duration get songCurrent => this._songCurrent;
  set songCurrent(Duration value) {
    this._songCurrent = value;
    notifyListeners();
  }

  String printDuration(Duration duration) {
    String twoDigits(int n) {
      if (n >= 10) return "$n";
      return "0$n";
    }

    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));

    return "$twoDigitMinutes:$twoDigitSeconds";
  }
}
