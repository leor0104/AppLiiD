import 'package:ascendere_app/Widgets/button_control.dart';
import 'package:flutter/material.dart';
import 'package:ascendere_app/Widgets/size_config.dart';

class ControlList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ControlListButton();
  }
}

class _ControlListButton extends State<ControlList> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    SizeConfig().init(context);
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              width: SizeConfig.safeBlockHorizontal * 95,
              margin: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                border: Border.all(color: Color(0xFFF0F3F4)),
                shape: BoxShape.rectangle,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    height: SizeConfig.safeBlockVertical * 10,
                    width: SizeConfig.safeBlockHorizontal * 80,
                    margin:
                    EdgeInsets.only(
                        top: SizeConfig.safeBlockVertical * 1,
                        left: SizeConfig.safeBlockHorizontal * 5
                    ),
                    child: Text(
                      "Control Remoto",
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: SizeConfig.safeBlockHorizontal * 5,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin:
                    EdgeInsets.only(
                        left: SizeConfig.safeBlockHorizontal * 5,
                      bottom: SizeConfig.safeBlockVertical*4
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(children: <Widget>[
                          ControlButton("Encender Luces")
                        ],),
                        Row(children: <Widget>[
                          ControlButton("Aire Acondicinado")
                        ],),
                        Row(children: <Widget>[
                          ControlButton("Acceso Puerta")
                        ],),
                        Row(children: <Widget>[
                          ControlButton("Activar Cortinas")
                        ],)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
