import 'package:ascendere_app/Widgets/scan_qr.dart';
import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }

}


class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {

  void onPressedFav(){
    Scaffold.of(context).showSnackBar(
        SnackBar(
          content: ScanQR(),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Colors.white,
      mini: true,
      tooltip: "Edit",
      onPressed: onPressedFav,
      child: Icon(
        Icons.edit, color: Colors.black54,
      ),
    );
  }

}