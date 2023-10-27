// ignore_for_file: file_names

import 'package:canal_olympia/src/core/helpers/network.dart';
import 'package:canal_olympia/src/core/helpers/sharedpreferences.dart';
import 'package:canal_olympia/src/core/services/firebase/authServices.dart';
import 'package:canal_olympia/src/core/utils/result.dart';
import 'package:canal_olympia/src/modules/auth/repositories/authRepository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepositoryImpl implements AuthRepository {
  final NetworkInfoHelper? networkInfoHelper;
  final AuthServices? authService;
  final SharedPreferencesHelper? sharedPreferencesHelper;

  AuthRepositoryImpl({
    this.networkInfoHelper,
    this.authService,
    this.sharedPreferencesHelper,
  });

  @override
  Future<Result<DocumentSnapshot>> getuser() async {
    bool isConnected = await networkInfoHelper!.isConnected();
    if (isConnected) {
      try {
        final user = await authService!.getUserData();

        return Result(success: user);
      } catch (e) {
        return Result(error: ServerError());
      }
    } else {
      return Result(error: NoInternetError());
    }
  }

  @override
  Future<Result<void>> logout() async {
    try {
      await authService!.signOut();
      return Result(success: null);
    } catch (e) {
      return Result(error: ServerError());
    }
  }

  @override
  Future<Result<void>> verifyPhone(
      String phone,
      Function(PhoneAuthCredential p1) verificationCompleted,
      Function(FirebaseAuthException p1) verificationFailed,
      Function(String p1, int? p2) codeSent,
      Function(String p1) codeAutoRetrievalTimeout) async {
    bool isConnected = await networkInfoHelper!.isConnected();

    if (isConnected) {
      try {
        await authService!.verifyPhoneNumber(phone, verificationCompleted,
            codeSent, codeAutoRetrievalTimeout, verificationFailed);

        return Result(success: null);
      } catch (e) {
        return Result(error: ServerError());
      }
    } else {
      return Result(error: NoInternetError());
    }
  }

  @override
  Future<bool> isLogged() async {
    bool isLogged = await authService!.isLogged();
    if (isLogged) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<Result<User?>> signinWithPhoneNumber(
      PhoneAuthCredential credential) async {
    bool isConnected = await networkInfoHelper!.isConnected();

    if (isConnected) {
      try {
        User? user = await authService!.signInWithPhoneNumber(credential);
        if (user != null) {
          await authService!
              .saveUserAdditionalData(user.uid, user.phoneNumber!);
        } else {
          return Result(error: ServerError());
        }

        return Result(success: user);
      } catch (e) {
        return Result(error: ServerError());
      }
    } else {
      return Result(error: NoInternetError());
    }
  }
}
