import 'package:flutter/material.dart';

class PauseButton extends StatelessWidget {
  const PauseButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Icon(Icons.pause),
      textColor: Colors.white,
      onPressed: () {},
    );
  }
}