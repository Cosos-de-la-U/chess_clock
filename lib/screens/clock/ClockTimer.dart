import 'package:chess_timer/screens/components/PauseButton.dart';
import 'package:chess_timer/screens/components/TimerBox.dart';
import 'package:chess_timer/screens/styles/ClockSide.dart';
import 'package:flutter/material.dart';

class ClockTimer extends StatefulWidget {
  @override
  _ClockTimerState createState() => _ClockTimerState();
}

class _ClockTimerState extends State<ClockTimer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Stack(
          children: [
            SafeArea(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Creating timer for white side
                Flexible(child: TimerBox(WhiteSideColor, WhiteSideRotation)),

                //Creating buttons in the middle
                Container(
                  child: Column(
                    children: [
                      
                      PauseButton(),
                    ],
                  ),
                ),

                //Creating timer for black side
                Flexible(child: TimerBox(BlackSideColor, BlackSideRotation)),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

