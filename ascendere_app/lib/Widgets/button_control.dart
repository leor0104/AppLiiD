import 'package:flutter/material.dart';
import 'package:ascendere_app/Widgets/size_config.dart';
import 'package:ascendere_app/Widgets/button_stwich.dart';

class  ControlButton extends StatelessWidget {


  String nameButton = "Encender Luces";

  ControlButton(this.nameButton);
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    SizeConfig (). init (context);
    final card = Container(
      height: SizeConfig.safeBlockHorizontal* 22,
      width: SizeConfig.safeBlockHorizontal * 85,
      decoration: BoxDecoration(
        //border: Border.all(color: Color(0xFFF0F3F4)),
        border: Border(
          bottom: BorderSide( //                    <--- top side
            color: Colors.black12,
            width: SizeConfig.blockSizeVertical * 0.1
          ),
        ),
        shape: BoxShape.rectangle,
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: SizeConfig.safeBlockHorizontal * 65,
            child: Text(nameButton,
            maxLines: 1,
            style: TextStyle(
              fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                fontFamily: 'Raleway',
                color: Colors.black54,
                fontWeight: FontWeight.bold
            ),),
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Switch(),
          )
        ],
      ),
    );

    return Stack(
      children: <Widget>[
        card,
      ],
    );
  }

}
class Switch extends StatefulWidget{


  State createState() {
    return _SwitchState();
  }
}

class _SwitchState extends State<Switch>{

  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
            ButtomCustomSwitch(
              activeColor: Colors.cyan,
              value: status,
              onChanged: (value) {
                print("VALUE : $value");
                setState(() {
                  status = value;
                });
              },
            ),
    );
  }
}