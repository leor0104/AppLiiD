import 'package:flutter/material.dart';
import 'floating_action_button_green.dart';
import 'package:ascendere_app/Widgets/size_config.dart';

class  CardImage extends StatelessWidget {

  String pathImage = "assets/img/beach.jpeg";

  CardImage(this.pathImage);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    SizeConfig (). init (context);
    final card = Container(
      height: SizeConfig.safeBlockHorizontal* 25,
      width: SizeConfig.safeBlockHorizontal * 25,
      margin: EdgeInsets.only(
        top: SizeConfig.safeBlockVertical * 5,
        left: SizeConfig.safeBlockHorizontal * 5

      ),

      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
            image: AssetImage(pathImage)
        ),
        shape: BoxShape.circle,
        boxShadow: <BoxShadow>[
        ]

      ),
    );

    return Stack(
      alignment: Alignment(0.7,1.3),
      children: <Widget>[
        card,
        FloatingActionButtonGreen(),
      ],
    );
  }

}