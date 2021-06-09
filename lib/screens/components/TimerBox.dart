import 'package:flutter/material.dart';

class TimerBox extends StatefulWidget {
  //parametros
  late final Color colorCajaPresionado;
  late final Color colorCaja;
  late final String clockTime;
  late final RotatedBox rotationCaja;

  //Constructor
  TimerBox(this.colorCaja, this.colorCajaPresionado, this.rotationCaja);

  //wea que le manda a _timerbox
  @override
  _TimerBoxState createState() => _TimerBoxState();
}

class _TimerBoxState extends State<TimerBox> {
  //controladres
  late BoxDecoration _colorControllerPressed;
  late BoxDecoration _colorController;
  late RotatedBox _rotationController;

  //inicializa el widget
  @override
  void initState() {
    //inicializamos el boxdecorator pasandole un color
    _colorController = BoxDecoration(color: this.widget.colorCaja);
    _colorControllerPressed =
        BoxDecoration(color: this.widget.colorCajaPresionado);
    _rotationController =
        RotatedBox(quarterTurns: this.widget.rotationCaja.quarterTurns);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Color? _colorControllerStatus = _colorController.color;
    return GestureDetector(
      onTap: () {
        setState(
          () {
            _colorControllerStatus = _colorControllerPressed.color;
            //_
          },
        );
      },
      child: FractionallySizedBox(
        widthFactor: 1,
        heightFactor: 0.9,
        child: Container(
          margin: const EdgeInsets.all(10),
          //Bordes redondos
          decoration: BoxDecoration(
              color: _colorControllerStatus,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          //Dentro del container
          child: RotatedBox(
            quarterTurns: _rotationController.quarterTurns,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //texto responsive
                Title(
                    color: Colors.black,
                    child: FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Text(
                          '1:40:00',
                          style: TextStyle(fontSize: 80, color: Colors.white),
                        )))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
