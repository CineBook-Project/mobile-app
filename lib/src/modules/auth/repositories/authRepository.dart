// ignore_for_file: file_names

import 'package:canal_olympia/src/core/utils/result.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Future<Result<void>> verifyPhone(
    String phone,
    Function(PhoneAuthCredential) verificationCompleted,
    Function(FirebaseAuthException) verificationFailed,
    Function(String, int?) codeSent,
    Function(String) codeAutoRetrievalTimeout,
  );

  Future<Result<User?>> signinWithPhoneNumber(PhoneAuthCredential credential);

  Future<Result<DocumentSnapshot>> getuser();

  Future<Result<void>> logout();

  Future<bool> isLogged();
}
