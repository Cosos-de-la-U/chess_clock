import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Icon(Icons.restart_alt_rounded),
      textColor: Colors.white,
      onPressed: () {},
    );
  }
}