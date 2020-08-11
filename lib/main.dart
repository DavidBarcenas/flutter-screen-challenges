import 'package:flutter/material.dart';
import 'package:shoes/pages/shoes_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'UI Challenges',
        debugShowCheckedModeBanner: false,
        home: ShoesPage());
  }
}
