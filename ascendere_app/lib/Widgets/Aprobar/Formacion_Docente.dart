import 'package:ascendere_app/Widgets/control_admin.dart';
import 'package:flutter/material.dart';
import 'package:ascendere_app/Widgets/Aprobar/Pantalla2.dart';
import 'AppBarPantalla1.dart';
import 'package:ascendere_app/Widgets/Aprobar/ContainerBody.dart';
import 'package:ascendere_app/Widgets/Aprobar/CursosListView.dart';

class CursosHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.more_vert,color: Colors.white,),
              tooltip: 'Show Snackbar',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RemoteControl()),
                );
              },
            ),
          ],
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              AppbarPrincipal("Formación\nDocente"),
              ContainerBody("Mis Eventos ","Categoría"),
              CursosListView(),
              ContainerBody("Este mes",""),
              CursosListView(),
              ContainerBody("Marzo",""),
              CursosListView(),
              ContainerBody("Abril",""),
              CursosListView(),
            ],
          ),
        )
      ),
      initialRoute: "/",
      routes: {
        '/menu': (context) => Pantalla2(),
      },
    );
  }
}
