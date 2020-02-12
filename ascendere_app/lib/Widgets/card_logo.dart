import 'package:flutter/material.dart';

class  CardLogo extends StatelessWidget {

  String pathImage = "assets/img/Ascendere.svg";

  CardLogo(this.pathImage);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final card = Container(
      height: 250.0,
      width: 200.0,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(pathImage)

          ),
      ),
    );

    return Stack(
      children: <Widget>[
        card,
      ],
    );
  }

}