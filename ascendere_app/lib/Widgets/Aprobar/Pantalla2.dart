import 'package:flutter/material.dart';
import 'package:ascendere_app/Widgets/Aprobar/AppBarPantalla2.dart';
import 'package:ascendere_app/Widgets/Aprobar/ContenidoPantalla2.dart';
import 'package:ascendere_app/Widgets/size_config.dart';

class Pantalla2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return  Scaffold(
      appBar: AppBar(
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            AppbarPantalla2("Aula Inteligente\nCurso"),
            ContenidoTextoPantalla2(" Breez Will & Deep Blue"," Lorem ipsum dolor sit amet,")
          ],
        ),
      ),
    );
  }
}