import 'package:chess_timer/screens/components/GoBackButton.dart';
import 'package:chess_timer/screens/components/PauseButton.dart';
import 'package:chess_timer/screens/components/ResetButton.dart';
import 'package:flutter/material.dart';

class ButtonsInTheMiddle extends StatelessWidget {
  const ButtonsInTheMiddle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GoBackButton(),
          PauseButton(),
          ResetButton(),
        ],
      ),
    );
  }
}
