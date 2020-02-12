import 'package:flutter/material.dart';
import 'package:ascendere_app/Widgets/Aprobar/Pantalla2.dart';
import 'package:ascendere_app/Widgets/Aprobar/curso.dart';
import 'package:ascendere_app/Widgets/Aprobar/CursosListView.dart';
class CursoBoton extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final boton = InkWell(
      onLongPress: (){
      },
    );

    return Material(
      child: boton,
    );
  }
}