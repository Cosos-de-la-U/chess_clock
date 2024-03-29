import 'package:chess_timer/screens/timers/TimersList.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chess Clock',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: TimersList(),
    );
  }
}
