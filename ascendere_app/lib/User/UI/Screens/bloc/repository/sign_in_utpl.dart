import 'dart:async';

import 'package:ascendere_app/User/UI/Screens/bloc/repository/firebase__auth_api.dart';
import 'package:ascendere_app/User/UI/Screens/sign_in_screen.dart';
import 'package:ascendere_app/Widgets/scan_qr.dart';
import 'package:ascendere_app/main.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(title: "FirebaseUi",
    home: new MyHomePage(title: "FireBaseUI",),);
  }
}

class MyHomePage extends StatefulWidget {
  String title;

  MyHomePage({Key key,this.title}):super(key:key);
  @override
  State<StatefulWidget> createState() => new _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>{
  FirebaseAuth _auth = FirebaseAuth.instance;
  StreamSubscription<FirebaseUser> _listener;

  FirebaseUser _currentUser;

  @override
  void initState() {
    super.initState();
    checkCurrentUser();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _listener.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if(_currentUser == null){
      return new SignInScreen();
    }else{
      return new HomeScreen(user: _currentUser);
    }
  }

  void checkCurrentUser() async {
    _currentUser = await _auth.currentUser();
    _currentUser?.getIdToken(refresh: true);
    _listener = _auth.onAuthStateChanged.listen((FirebaseUser user){
      setState(() {
        _currentUser = user;
      });
    });
  }
}

class HomeScreen extends StatelessWidget{
  FirebaseUser user;

  HomeScreen({this.user});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScanQR();
  }
}