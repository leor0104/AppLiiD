import 'package:flutter/material.dart';
import 'package:ascendere_app/Widgets/Aprobar/AppBarPantalla3.dart';
import 'package:ascendere_app/Widgets/Aprobar/ContenidoPantalla3.dart';
import 'package:ascendere_app/Widgets/size_config.dart';

class Main3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            AppbarPantalla3("Aula Inteligente\nCurso"),
            ContenidoTextoPantalla3(" Breez Will & Deep Blue"," Lorem ipsum dolor sit amet,")
          ],
        ),
      ),
    );
  }
}
