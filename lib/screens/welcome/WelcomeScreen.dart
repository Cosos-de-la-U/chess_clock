import 'package:chess_timer/screens/components/LogoChessClock.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            SafeArea(
              child: LogoChessClock(),
            )
          ],
        ),
    );
  }
}
