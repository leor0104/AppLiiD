import 'package:ascendere_app/Widgets/Aprobar/Formacion_Docente.dart';
import 'package:wifi/wifi.dart';
import 'package:ascendere_app/Widgets/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'dart:async';


import 'Aprobar/main3.dart';


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


  Future _lecturaQR() async {
    _lect = await FlutterBarcodeScanner.scanBarcode("#2271b3", "CANCELAR", false, ScanMode.QR);
    var result =  Wifi.connection('LiiDUTPL', 'LiiD2019');
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
        backgroundColor: Colors.cyan,
        title: Text("Lector QR Ascendere",style: TextStyle(
          fontFamily: 'Raleway',
        )
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CursosHome()),
            );
          },)
        ],
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(20),
            child: Text(
              'Ve a la puerta del aula y encontrarás un código QR, escanéalo para continuar ',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: SizeConfig.safeBlockHorizontal*5
              ),
              textAlign: TextAlign.center,
            ),
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
        child: Icon(Icons.settings_overscan,color: Colors.white,size: SizeConfig.safeBlockHorizontal *7,),
      ),
      
    );
  }
  Widget scanUI(){
    return null;
  }
}