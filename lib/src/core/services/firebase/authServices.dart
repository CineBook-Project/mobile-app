// ignore_for_file: file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> verifyPhoneNumber(
      String phoneNumber,
      Function(PhoneAuthCredential) verificationCompleted,
      Function(String, int?) codeSent,
      Function(String) codeAutoRetrievalTimeout,
      Function(FirebaseAuthException) verificationFailed) {
    return _auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
    );
  }

  // Se connecter avec numero de telephone
  Future<User?> signInWithPhoneNumber(PhoneAuthCredential credential) async {
    try {
      UserCredential userCredential = await _auth.signInWithCredential(
        credential,
      );
      return userCredential.user;
    } catch (e) {
      return null;
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Future<void> saveUserAdditionalData(String userId, String phone) async {
    final userCollectionRef = _firestore.collection('users').doc(userId);

    await userCollectionRef.set({'uid': userId, 'phone': phone});
  }

  // get user data for current user
  Future<DocumentSnapshot> getUserData() async {
    final user = _auth.currentUser;
    final userCollectionRef = _firestore.collection('users').doc(user!.uid);

    return await userCollectionRef.get();
  }

  Future<bool> isLogged() async {
    final user = _auth.currentUser;
    if (user != null) {
      return true;
    } else {
      return false;
    }
  }
}
