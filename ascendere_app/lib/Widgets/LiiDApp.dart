import 'package:flutter/material.dart';
import 'package:ascendere_app/User/UI/Screens/sign_in_screen.dart';

class Cursos extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Cursos();
  }

}
class _Cursos extends State<Cursos> {
  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    SignInScreen(),
  ];

  void onTapTapped(int index){

    setState(() {
      indexTap = index;
    });

  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return

      Scaffold(
        body: widgetsChildren[indexTap],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Colors.white,
          ),
          child: BottomNavigationBar(
              onTap: onTapTapped,
              currentIndex: indexTap,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    title: Text("")
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    title: Text("")
                ),
              ],

          ),
        ),
      );
  }

}