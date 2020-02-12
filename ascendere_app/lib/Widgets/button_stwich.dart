library Custom_switch2;
import 'package:ascendere_app/Widgets/size_config.dart';
import 'package:flutter/material.dart';

class ButtomCustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final Color activeColor;

  const ButtomCustomSwitch({Key key, this.value, this.onChanged, this.activeColor})
      : super(key: key);

  @override
  _ButtomCustomSwitchState createState() => _ButtomCustomSwitchState();
}

class _ButtomCustomSwitchState extends State<ButtomCustomSwitch>
    with SingleTickerProviderStateMixin {
  Animation _circleAnimation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 60));
    _circleAnimation = AlignmentTween(
        begin: widget.value ? Alignment.centerRight : Alignment.centerLeft,
        end: widget.value ? Alignment.centerLeft : Alignment.centerRight)
        .animate(CurvedAnimation(
        parent: _animationController, curve: Curves.linear));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            if (_animationController.isCompleted) {
              _animationController.reverse();
            } else {
              _animationController.forward();
            }
            widget.value == false
                ? widget.onChanged(true)
                : widget.onChanged(false);
          },
          child: Container(
            height: SizeConfig.blockSizeHorizontal*9,
            width: SizeConfig.blockSizeHorizontal*16,

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: _circleAnimation.value == Alignment.centerLeft
                    ? Colors.grey
                    : widget.activeColor),
            child: Padding(
              padding: EdgeInsets.only(
                  top: SizeConfig.safeBlockHorizontal*1.4, bottom: SizeConfig.safeBlockHorizontal*1.4, right: SizeConfig.safeBlockHorizontal*0.5, left: SizeConfig.safeBlockHorizontal*0.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _circleAnimation.value == Alignment.centerRight
                      ? Padding(
                    padding: EdgeInsets.only(left:SizeConfig.safeBlockHorizontal*1.2, right: SizeConfig.safeBlockHorizontal*1.2),
                    child: Text(
                      'On',
                      style: TextStyle(
                          color: Colors.cyan,
                          fontWeight: FontWeight.w900,
                          fontSize: SizeConfig.safeBlockHorizontal*3),
                    ),
                  )
                      : Container(),
                  Align(
                    alignment: _circleAnimation.value,
                    child: Container(
                      width: SizeConfig.blockSizeHorizontal*6,
                      height: SizeConfig.blockSizeHorizontal*6,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                    ),
                  ),
                  _circleAnimation.value == Alignment.centerLeft
                      ? Padding(
                    padding: EdgeInsets.only(
                        left:SizeConfig.safeBlockHorizontal*1.2, right: SizeConfig.safeBlockHorizontal*1.2),
                    child: Text(
                      'On',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w900,
                          fontSize: SizeConfig.safeBlockHorizontal*3),
                    ),
                  )
                      : Container(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}