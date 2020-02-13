import 'package:flutter/material.dart';
import 'package:ascendere_app/Widgets/size_config.dart';
import 'curso.dart';
class CursosListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: SizeConfig.blockSizeVertical*22,
      margin: EdgeInsets.only(top: SizeConfig.safeBlockVertical*2,
      left: SizeConfig.safeBlockHorizontal*5,
      bottom: SizeConfig.safeBlockVertical*2),
      child: ListView(
        padding: EdgeInsets.all(2),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ContainerCurso("Realidad Aumentada","21 horas","Aula 733","amber"),
          ContainerCurso("Investigación Mixta","22 horas","Aula 731","amber"),
          ContainerCurso("Ética","23 horas","Aula 732","pink"),
        ],
      ),
    );
  }
}