import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:ascendere_app/User/UI/Screens/bloc/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserBloc implements Bloc {

  final _auth_repository = AuthRepository();

    //Flujo de Datos - Streams
  //Stream - Firebase
  //Stream Ccontroller
  Stream<FirebaseUser> streamFireBase = FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> get authStatus => streamFireBase;
  //Casos de Uso
  //1. SignIn a la aplicacion Google
  Future<FirebaseUser> signIn(){
      return _auth_repository.signInFirebase();
  }

  @override
  void dispose(){

  }
}