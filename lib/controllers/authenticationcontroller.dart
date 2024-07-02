import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationController {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> registerNewUser(
      String email, String username, String password) async {
    String res = 'something went wrong';
    // Simulate a network request
    try {
      //create user first in authentication and inc cloud firestore
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      await _firestore.collection('buyers').doc(userCredential.user!.uid).set(
        {
          'profileImageUrl': '',
          'uid': userCredential.user!.uid,
          'pinCode': '',
          'email': email,
          'username': username,
          'password': password,
          'locality': '',
          'city': '',
          'state': '',
        },
      );
      res = 'Success';
      Future.delayed(const Duration(seconds: 2));
      return 'Success';
    } catch (e) {
      res = e.toString();
    }
    return res;
  }

  //login user function
  Future<String> loginUser(String email, String password) async {
    String res = 'something went wrong';
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      res = 'Success';
      Future.delayed(const Duration(seconds: 2));
      return 'Success';
    } catch (e) {
      res = e.toString();
    }
    return res;
  }
}
