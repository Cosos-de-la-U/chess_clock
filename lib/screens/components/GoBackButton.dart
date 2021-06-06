import 'package:flutter/material.dart';

class GoBackButton extends StatelessWidget {
  const GoBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Icon(Icons.exit_to_app),
      textColor: Colors.white,
      onPressed: () {},
    );
  }
}