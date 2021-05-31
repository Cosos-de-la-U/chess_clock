import 'package:chess_timer/screens/styles/Images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogoChessClock extends StatelessWidget {
  const LogoChessClock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(chesslogo, height: 500, fit: BoxFit.fill,)
      ],
    );
  }
}