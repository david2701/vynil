import 'package:flutter/material.dart';
import 'package:vynilmatic/player/player_widget.dart';
import 'utils/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vynilmatic',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: PlayerWidget(),
    );
  }
}
