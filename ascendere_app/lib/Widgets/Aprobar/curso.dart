import 'package:flutter/material.dart';
import 'package:ascendere_app/Widgets/size_config.dart';
import 'package:ascendere_app/Widgets/Aprobar/Pantalla2.dart';

class ContainerCurso extends StatelessWidget {
  String titulo_curso = "Title Course";
  String horas = "8 horas";
  String aula = "Aula 721";

  ContainerCurso(this.titulo_curso, this.horas, this.aula);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final titulo = Container(
      margin: EdgeInsets.only(left: SizeConfig.safeBlockHorizontal * 5),
      width: SizeConfig.blockSizeHorizontal * 90,
      height: SizeConfig.blockSizeVertical * 10,
      child: Text(titulo_curso,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Lato',
            fontSize: 20,
            wordSpacing: SizeConfig.blockSizeHorizontal * 1,
            height: 2,
          )),
    );
    final informacion = Container(
      color: Color.fromRGBO(58, 204, 225, 50),
      width: SizeConfig.blockSizeHorizontal * 100,
      height: SizeConfig.blockSizeVertical * 7,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
                left: SizeConfig.safeBlockHorizontal * 1,
                bottom: SizeConfig.safeBlockVertical * 1),
            child: Text(
              aula,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: SizeConfig.safeBlockHorizontal * 4),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: SizeConfig.safeBlockHorizontal * 1,
                right: SizeConfig.safeBlockVertical * 1),
            width: SizeConfig.blockSizeHorizontal * 17,
            height: SizeConfig.blockSizeVertical * 100,
            child: Text(horas,
                textAlign: TextAlign.right,
                style: TextStyle(color: Colors.white,
                fontSize: SizeConfig.safeBlockHorizontal * 3)),
          )
        ],
      ),
    );
    final cursoWidget = Container(
        width: SizeConfig.blockSizeHorizontal * 40,
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(right: SizeConfig.safeBlockVertical*1.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.0),
          color: Colors.blue,
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, "/menu");
          },
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            titulo,
            informacion,
          ],
        ),
      )
    );

    return Container(
      child: cursoWidget,
    );
  }
}
