import 'package:firebase_auth/firebase_auth.dart';
void singUp(String e1,String p1)
{
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  firebaseAuth.createUserWithEmailAndPassword(email: e1, password: p1);
}