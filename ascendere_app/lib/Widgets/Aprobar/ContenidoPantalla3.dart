import 'package:ascendere_app/Widgets/scan_qr.dart';
import 'package:flutter/material.dart';

import '../size_config.dart';
import 'package:flutter/widgets.dart';

class ContenidoTextoPantalla3 extends StatelessWidget{
  String docente = "Docente:";
  String texto = "Breez Will & Deep Blue";
  String descripcion = "Descripcion:";
  String lorem = "orem ipsum dolor sit.";

  ContenidoTextoPantalla3(this.texto, this.lorem);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
      padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal*5),
      child: Row(
        children: <Widget>[
          Text(
            docente,
            style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 5, fontWeight: FontWeight.w400),
            textAlign: TextAlign.left,
          ),
          Text(
            texto,
            style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 5, fontWeight: FontWeight.w300),
            textAlign: TextAlign.right,
          )
        ],
      ),
    );

    final Descripcion = Container(
      padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal*5),
      child: Row(
        children: <Widget>[
          Container(
            height: SizeConfig.blockSizeVertical*10,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  descripcion,
                  style: TextStyle(
                      fontSize: SizeConfig.safeBlockHorizontal * 5,
                      fontWeight: FontWeight.w400),
                ),
                Container(
                  width: SizeConfig.blockSizeHorizontal*60,
                  child: Text(
                    lorem,
                    style: TextStyle(
                        fontSize: SizeConfig.safeBlockHorizontal * 5,
                        fontWeight: FontWeight.w300),
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );

    final Boton = GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ScanQR()),
        );
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
          "ASISTENCIA",
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
