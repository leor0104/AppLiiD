import 'package:ascendere_app/Widgets/card_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'dart:async';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/services.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScanQR();
  }
}
class ScanQR extends StatefulWidget {

  @override
  State createState() {
    return _ScanQR();
  }
}
class _ScanQR extends State<ScanQR> {

  String _value = "";
  String _lect = "";
  String AscSVG = 'https://innovaciondocente.utpl.edu.ec/assets/images/Ascendere.svg';


  Future _lecturaQR() async {
    _lect = await FlutterBarcodeScanner.scanBarcode("#2271b3", "CANCELAR", false, ScanMode.QR);

    setState(() {
      _value = _lect;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
    Scaffold(
      appBar: AppBar(
        title: Text("Lector QR Ascendere"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: null)
        ],
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'El valor del QR es:',
            ),
            Text(
              _value,
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _lecturaQR,
        tooltip: 'Increment',
        child: Icon(Icons.settings_overscan),
      ),
      
    );
  }
  Widget scanUI(){
    return null;
  }
}