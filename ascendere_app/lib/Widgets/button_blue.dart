import 'package:ascendere_app/Widgets/size_config.dart';
import 'package:flutter/material.dart';

class ButtonBlue extends StatefulWidget {

  final String text;
  double widht = 0.0;
  double height = 0.0;
  final VoidCallback onPressed;

  ButtonBlue({Key key, @required this.text, @required this.onPressed, this.height, this.widht});

  @override
  State createState() {
    // TODO: implement createState
    return _ButtonBlue();
  }
}

class _ButtonBlue extends State<ButtonBlue>{
  @override
  Widget build(BuildContext context) {
    SizeConfig (). init (context);
    return Container(
        margin: EdgeInsets.only(
            top: SizeConfig.safeBlockVertical * 2.5,
        ),
        width: widget.widht,
        height: widget.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(
                colors: [
                  Color(0xFF3b83bd),//arriiba
                  Color(0xFF0CB7F2)//abajo
                ],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp

            )
        ),
        child: GestureDetector(
          onTap: widget.onPressed,
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(
                  fontSize: SizeConfig.safeBlockVertical * 2.7,
                  color: Colors.white
              ),
            ),
          ),
        ),
      );
  }
}