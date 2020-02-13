import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ascendere_app/Widgets/size_config.dart';
import 'package:ascendere_app/Widgets/Aprobar/Pantalla2.dart';

class ContainerCurso extends StatelessWidget {
  String titulo_curso = "Title Course";
  String horas = "8 horas";
  String aula = "Aula 721";
  String color1 = "amber";

  ContainerCurso(this.titulo_curso, this.horas, this.aula,this.color1);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final titulo = Container(
      margin: EdgeInsets.only(left: SizeConfig.safeBlockHorizontal * 5,
      top: SizeConfig.safeBlockHorizontal * 5),
      width: SizeConfig.blockSizeHorizontal * 90,
      height: SizeConfig.blockSizeVertical * 10,
      child: Text(titulo_curso,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Montserrat',
            fontSize: SizeConfig.safeBlockHorizontal*4.5,
            wordSpacing: SizeConfig.blockSizeHorizontal * 1,
            height: SizeConfig.safeBlockHorizontal*0.3,
          )),
    );
    final informacion = Container(
      color: Color(0xFF2874A6),
      width: SizeConfig.blockSizeHorizontal * 100,
      height: SizeConfig.blockSizeVertical * 7,
      margin: EdgeInsets.only(bottom:SizeConfig.blockSizeVertical * 1),
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
                fontSize: SizeConfig.safeBlockHorizontal * 3,
                fontStyle: FontStyle.italic)),
          )
        ],
      ),
    );
    final cursoWidget = Container(
        width: SizeConfig.blockSizeHorizontal * 40,
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(right: SizeConfig.safeBlockVertical*1.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: Color(0xFF3498DB),
          //color: Color(0xFF2874A6),
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
