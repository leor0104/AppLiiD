import 'package:flutter/material.dart';



class GradientBack extends StatelessWidget {

  String title = "Popular";
  double height = 0.0;

  GradientBack(this.title, this.height);
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF0CB7F2),
                Color(0xFF33EBFF)
              ],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp
          )
      ),

      child: Text(
        title,
        style: TextStyle(
            color: Colors.black,
            fontSize: 30.0,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.normal
        ),
      ),
      alignment: Alignment(-0.9, -0.6),
    );
  }
}