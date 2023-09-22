import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
final _authService = AuthService();

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      const SnackBar(
        content: Text(
          'Login realizado com sucesso'
        ),
        duration: Duration(seconds: 3),
        backgroundColor: Colors.lightBlue,
      );
      return userCredential.user;
    } catch (e) {
      return null;
    }
  }
}