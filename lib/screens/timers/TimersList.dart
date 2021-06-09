import 'package:chess_timer/screens/clock/ClockTimer.dart';
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
    return Scaffold(
        appBar: AppBar(
          title: TitleAppBar(),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () => {}, icon: Icon(Icons.settings))
          ],
        ),
        floatingActionButton:
            FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
        body: Stack(
          children: [
            SafeArea(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.library_add_check_sharp),
                    title: Text("1 + 1"),
                    subtitle: Text("Bullet, no berserk"),
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ClockTimer())),
                  ),
                  ListTile(
                    leading: Icon(Icons.library_add_check_sharp),
                    title: Text("10 + 0"),
                    subtitle: Text("Rapid, no berserk"),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
