import 'package:chess_timer/screens/components/TitleAppBar.dart';
import 'package:flutter/material.dart';

class TimersList extends StatefulWidget {
  // TimersList({Key key}) : super(key: key);

  @override
  _TimersListState createState() => _TimersListState();
}

class _TimersListState extends State<TimersList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: TitleAppBar(),
          actions: [
            IconButton(onPressed: () => {}, icon: Icon(Icons.settings))
          ],
        ),
      ),
    );
  }
}
