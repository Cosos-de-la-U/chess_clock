import 'package:chess_timer/screens/components/ButtonsInTheMiddle.dart';
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
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Creating timer for white side
              Flexible(child: TimerBox(WhiteSideColor,ClockRunningColorBox, WhiteSideRotation),flex: 12,),

              //Creating buttons in the middle
              Flexible(child: SizedBox(child: ButtonsInTheMiddle(),), flex: 1,),

              //Creating timer for black side
              Flexible(child: TimerBox(BlackSideColor,ClockRunningColorBox, BlackSideRotation), flex: 12,),
            ],
          ))
        ],
      ),
    );
  }
}

