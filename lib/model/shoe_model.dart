import 'package:flutter/material.dart';

class ShoeModel with ChangeNotifier {
  String _assetImage = 'assets/img/azul.png';
  double _size = 8.0;

  String get assetImage => this._assetImage;
  set assetImage(String value) {
    this._assetImage = value;
    this.notifyListeners();
  }

  double get size => this._size;
  set size(double value) {
    this._size = value;
    this.notifyListeners();
  }
}
