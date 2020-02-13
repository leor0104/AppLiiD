import 'package:ascendere_app/Widgets/Aprobar/drop_down_button.dart';
import 'package:flutter/material.dart';
import 'package:ascendere_app/Widgets/size_config.dart';
import 'package:ascendere_app/Widgets/Aprobar/CursosListView.dart';
import 'package:ascendere_app/Widgets/Aprobar/CursoBottom.dart';

class ContainerBody extends StatelessWidget {
  String misEventos = "Mis Eventos                                ";
  String categoria = "Categoria";

  ContainerBody(this.misEventos, this.categoria);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: SizeConfig.safeBlockHorizontal*5,
            left: SizeConfig.blockSizeHorizontal*5.5
          ),
          child: Text(
            misEventos,
            style: TextStyle(
                fontSize: SizeConfig.safeBlockHorizontal * 5,
                fontWeight: FontWeight.w300,
                fontFamily: 'Raleway',
                letterSpacing: 1),
            textAlign: TextAlign.left,
          ),
        ),
            Container(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(SizeConfig.blockSizeHorizontal*100),
                  ),
                  width: SizeConfig.blockSizeHorizontal*40,
                  height: SizeConfig.blockSizeHorizontal*10,
                  child: 
                  DropDownWidget(),
                ),
              ),
      ],
    );
  }
}
