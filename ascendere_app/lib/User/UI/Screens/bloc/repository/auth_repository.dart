import 'package:firebase_auth/firebase_auth.dart';
import 'package:ascendere_app/User/UI/Screens/bloc/repository/firebase__auth_api.dart';

class AuthRepository {

  final _fireBaseAuthAPI = FireBaseAuthAPI();

  Future<FirebaseUser> signInFirebase() => _fireBaseAuthAPI.signIn();


}