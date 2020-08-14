import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes/model/shoe_model.dart';
import 'package:shoes/pages/music_player_page.dart';
import 'package:shoes/theme/theme.dart';

import 'model/audio_player_model.dart';
import 'package:shoes/pages/shoes_page.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ShoeModel()),
        ChangeNotifierProvider(create: (_) => AudioPlayerModel())
      ],
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'UI Challenges',
        debugShowCheckedModeBanner: false,
        // theme: playerTheme,
        home: ShoesPage());
  }
}
