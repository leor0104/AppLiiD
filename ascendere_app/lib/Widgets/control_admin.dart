import 'package:ascendere_app/Widgets/button_control_list.dart';
import 'package:ascendere_app/Widgets/card_image.dart';
import 'package:ascendere_app/Widgets/size_config.dart';
import 'package:flutter/material.dart';

class RemoteControl extends StatefulWidget {
  @override
  State createState() {
    return _RemoteControl();
  }
}

class _RemoteControl extends State<RemoteControl>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RemoteControlUI();
  }
  Widget RemoteControlUI(){
    SizeConfig (). init (context);
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            color: Color(0xFFECEFF0),
            height: SizeConfig.blockSizeVertical *27,
            width: SizeConfig.blockSizeHorizontal * 100,
            child: Row(

              children: <Widget>[
                Container(child: CardImage("assets/img/beach.jpeg"),
                    alignment: Alignment.centerRight,
                    height: SizeConfig.blockSizeVertical *100,
                    width: SizeConfig.blockSizeHorizontal * 32,
                ),
                Container(
                    height: SizeConfig.blockSizeVertical * 15,
                    width: SizeConfig.blockSizeHorizontal * 57,
                    margin: EdgeInsets.only(
                        top: SizeConfig.safeBlockVertical * 13.5,
                    ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(3.0),
                        child:
                        Text("Leortiz6",
                          style: TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: SizeConfig.safeBlockHorizontal * 4,
                              color: Colors.black,
                              fontWeight: FontWeight.normal
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(3.0),
                        child:
                        Text("ASCENDERE",
                          style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: SizeConfig.safeBlockHorizontal * 4,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(3.0),
                        child:
                        Text("Ingeniería en Sistemas y Computación",
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: SizeConfig.safeBlockHorizontal * 3.1,
                            color: Colors.black,
                            fontWeight: FontWeight.normal
                        ),
                          textAlign: TextAlign.right,
                          maxLines: 1,
                      )
                      ),
                    ],
                  )
                ),
                Container(
                  color: Colors.black54,
                  margin: EdgeInsets.only(
                    top: SizeConfig.blockSizeVertical * 9,
                    left: SizeConfig.safeBlockHorizontal * 2
                  ),
                  height: SizeConfig.blockSizeVertical * 11,
                  width: SizeConfig.blockSizeHorizontal * 0.5,
                )
              ],
            ),
          ),
          Container(
            child: ControlList(),
          )
        ],
      ),
    );
  }
}
