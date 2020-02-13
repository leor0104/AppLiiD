import 'package:flutter/material.dart';
import 'package:ascendere_app/Widgets/size_config.dart';

class AppbarPrincipal extends StatelessWidget {
  String titulo_interfaz1 = "Formacion\nDocente";

  AppbarPrincipal(this.titulo_interfaz1);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        color: Colors.cyan,
        height: SizeConfig.blockSizeHorizontal * 49,
        child: Row(
          children: <Widget>[
            Container(
              width: SizeConfig.blockSizeHorizontal * 90,
              margin: EdgeInsets.only(left: SizeConfig.safeBlockHorizontal*5),
              child: Text(
                titulo_interfaz1,
                style:
                    TextStyle(color: Colors.white, fontSize: 30, height: 1.5),
              ),
            ),
          ],
        ));
  }
}
