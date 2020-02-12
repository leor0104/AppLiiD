import 'package:ascendere_app/Widgets/Aprobar/ContenidoPantalla3.dart';
import 'package:flutter/material.dart';
import 'package:ascendere_app/Widgets/size_config.dart';

import 'AppBarPantalla3.dart';
import 'main3.dart';

class ContenidoTextoPantalla2 extends StatelessWidget {
  String docente = "Docente:";
  String texto = "Breez Will & Deep Blue";
  String descripcion = "Descripcion:";
  String lorem = "orem ipsum dolor sit.";

  ContenidoTextoPantalla2(this.texto, this.lorem);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Future<void> _neverSatisfied() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('En Hora Buena'),
            content: SingleChildScrollView(
              child: ListBody(
                mainAxis: Axis.vertical,
                children: <Widget>[
                  Text('Tu postulación ha sido registrada'),
                  Text('Se enviará la notificación de aprobación a su correo'),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Continuar'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Main3()),);
                },
              ),
            ],
          );
        },
      );
    }

    final fechas = Container(
      margin: EdgeInsets.only(
          left: SizeConfig.blockSizeHorizontal * 2,
          right: SizeConfig.blockSizeHorizontal * 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: SizeConfig.blockSizeHorizontal * 3,
                height: SizeConfig.blockSizeHorizontal * 3,
                margin: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.0),
                    color: Color(0xFF00A9DE) //0xFF3ACCE1,
                    ),
              ),
              Container(
                child: Text(
                  "Fecha Inicio:",
                  style: TextStyle(
                      fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                      color: Colors.blueGrey),
                ),
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 11,
                  bottom: SizeConfig.safeBlockVertical * 0.4),
              child: Text(
                "viernes, 06 de diciembre de 2019",
                style: TextStyle(
                    fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                    color: Colors.grey),
              )),
          Row(
            children: <Widget>[
              Container(
                width: SizeConfig.blockSizeHorizontal * 3,
                height: SizeConfig.blockSizeHorizontal * 3,
                margin: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.0),
                    color: Color(0xFF3ACCE1) //0xFF3ACCE1,
                    ),
              ),
              Container(
                child: Text(
                  "Fecha Fin:",
                  style: TextStyle(
                      fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                      color: Colors.blueGrey),
                ),
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 11,
                  bottom: SizeConfig.safeBlockVertical * 1.6),
              child: Text("viernes, 09 de diciembre de 2019",
                  style: TextStyle(
                      fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                      color: Colors.grey))),
        ],
      ),
    );
    final Docente = Container(
      padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 5),
      child: Row(
        children: <Widget>[
          Text(
            docente,
            style: TextStyle(fontSize: 21.0, fontWeight: FontWeight.w400),
            textAlign: TextAlign.left,
          ),
          Text(
            texto,
            style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.w300),
            textAlign: TextAlign.right,
          )
        ],
      ),
    );

    final Descripcion = Container(
      padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 5),
      child: Row(
        children: <Widget>[
          Text(
            descripcion,
            style: TextStyle(fontSize: 21.0, fontWeight: FontWeight.w400),
          ),
          Text(
            lorem,
            style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.w300),
          )
        ],
      ),
    );

    final Boton = GestureDetector(
      onTap: () {
        _neverSatisfied();
        //
      },
      child: Container(
        margin: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Color(0xFF14E7E1),
        ),
        alignment: Alignment.center,
        width: SizeConfig.blockSizeHorizontal * 55,
        height: 50,
        child: Text(
          "POSTULACIÓN",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: SizeConfig.safeBlockHorizontal * 4.7,
          ),
        ),
      ),
    );
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[Docente, Descripcion, fechas, Boton],
    ));
  }
}
