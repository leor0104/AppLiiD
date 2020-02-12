import 'package:ascendere_app/Widgets/Aprobar/Formacion_Docente.dart';
import 'package:ascendere_app/Widgets/control_admin.dart';
import 'package:ascendere_app/Widgets/size_config.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ascendere_app/Widgets/button_blue.dart';
import 'package:ascendere_app/Widgets/button_blue_light.dart';
import 'package:ascendere_app/User/UI/Screens/bloc/repository/bloc_user.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';


class SignInScreen extends StatefulWidget {


  @override
  State createState() {
    return _SignInScreen();
  }
}

class _SignInScreen extends State<SignInScreen> {

  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {

    SizeConfig (). init (context);
    // TODO: implement build
    userBloc = BlocProvider.of(context);
    return _handleCurrentSession();
  }
  Widget _handleCurrentSession(){
    return StreamBuilder(
      stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        if(!snapshot.hasData || snapshot.hasError){
          //sanpshot - data = Object User
          return signInUI(); //Devuelve Inciar Sesion
        }else{
          return CursosHome();
        }
      },
    );
  }

  Widget signInUI(){
    String AscSVG = 'https://innovaciondocente.utpl.edu.ec/assets/images/Ascendere.svg';

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          //GradientBack("", null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(child:
              SvgPicture.network(AscSVG,color: Color(0xFF0CB7F2),
                  height: SizeConfig.blockSizeVertical* 25,placeholderBuilder: (context) => Icon (Icons.error) ),
              padding:EdgeInsets.all(SizeConfig.safeBlockVertical* 4),),
              Text("Welcome to Ascendere",
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: SizeConfig.safeBlockHorizontal * 14,
                      color: Colors.black,
                      //fontWeight: FontWeight.normal
                  )
              ),
                Container(
                  height: SizeConfig.blockSizeVertical * 10,
                  width: SizeConfig.blockSizeHorizontal * 90,
                  margin: EdgeInsets.only(
                      top: SizeConfig.safeBlockHorizontal * 4,
                  ),
                  child: Center(
                    child: Text("The best way to navigate your world and discover new places. Let's get started!"'\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: SizeConfig.safeBlockHorizontal * 4,
                          color: Colors.black,
                          fontWeight: FontWeight.normal
                      ),
                    ),
                  ),
                ),
              Text("CONTINUE WITH:",
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: SizeConfig.safeBlockHorizontal * 5,
                      color: Colors.black,
                      fontWeight: FontWeight.normal
                  )
              ),
              ButtonBlueLight(text: "Mi Portal UTPL",
              onPressed: (){
                userBloc.signIn().then((FirebaseUser user) => print("El usuario es ${user.email}"));
              },
                widht: SizeConfig.blockSizeHorizontal * 55,
                height: SizeConfig.blockSizeHorizontal * 11.7,),
              ButtonBlue(text: "Gmail",
                onPressed: (){
                  userBloc.signIn().then((FirebaseUser user) => print("El usuario es ${user.displayName}"));
                },
                widht: SizeConfig.blockSizeHorizontal * 55,
                height: SizeConfig.blockSizeHorizontal * 11.7,)
            ],
          )
        ],
      ),
    );
  }
}