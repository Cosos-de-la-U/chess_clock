import 'package:chess_timer/screens/styles/Images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TitleAppBar extends StatelessWidget {
  const TitleAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      const Text('CHESS '),
      SvgPicture.asset(chesslogo,height: 19,width: 20,),
      const Text(' CLOCK'),
      ],
    );
  }
}