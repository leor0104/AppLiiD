import 'package:flutter/material.dart';
import 'package:ascendere_app/Widgets/Aprobar/AppBarPantalla3.dart';
import 'package:ascendere_app/Widgets/Aprobar/ContenidoPantalla3.dart';

class Main3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.cyan,

      ),
      home: Scaffold(
        body: Container(
          width: 415,
          child: Column(
            children: <Widget>[
              AppbarPantalla3("Título del\nCurso"),
              ContenidoTextoPantalla3("Breez Will & Deep Blue","Lorem ipsum dolor sit amet,")
            ],
          ),
        )
      )
    );
  }
}
