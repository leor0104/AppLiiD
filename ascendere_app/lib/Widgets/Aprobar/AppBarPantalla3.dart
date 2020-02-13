import 'package:flutter/material.dart';
import 'package:ascendere_app/Widgets/size_config.dart';

class AppbarPantalla3 extends StatelessWidget {
  String titulo_interfaz2 = "Título del\nCurso";

  AppbarPantalla3(this.titulo_interfaz2);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        color: Colors.blue,
        height: SizeConfig.blockSizeHorizontal * 49,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(
                  left: SizeConfig.safeBlockHorizontal * 5,
                  bottom: SizeConfig.safeBlockHorizontal * 5,
                ),
                child: Text(
                  titulo_interfaz2,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: SizeConfig.safeBlockHorizontal * 7,
                      height: SizeConfig.safeBlockVertical * 0.2),
                )),
          ],
        ));
  }
}
