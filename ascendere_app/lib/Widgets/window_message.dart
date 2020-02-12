import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Dialoge(title: 'Flutter AlertDialog'),
    );
  }
}

class Dialoge extends StatefulWidget {
  Dialoge({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _DialogeState createState() => _DialogeState();
}

class _DialogeState extends State<Dialoge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Mostrar AlertDialog"),
          onPressed: _showAlertDialog,
        ),
      ),
    );
  }

  void _showAlertDialog() {
    showDialog(
        context: context,
        builder: (buildcontext) {
          return AlertDialog(
            title: Text("Titulo del alert"),
            content: Text("contenido del alert"),
            actions: <Widget>[
              RaisedButton(
                child: Text(
                  "CERRAR",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }
}
