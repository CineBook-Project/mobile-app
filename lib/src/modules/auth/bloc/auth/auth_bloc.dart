import 'package:canal_olympia/src/core/helpers/sharedpreferences.dart';
import 'package:canal_olympia/src/modules/auth/repositories/authRepository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository? authRepository;
  final SharedPreferencesHelper? sharedPreferencesHelper;

  AuthBloc({this.authRepository, this.sharedPreferencesHelper})
      : super(AuthInitial()) {
    on<AuthStarted>(_authStarted);
    on<AuthLoggedIn>(_authLoggedIn);
    on<AuthFirst>(_authFirstOpen);
    on<AuthLoggedOut>(_authLoggedOut);
    on<AuthLogin>(_authLogin);
  }

  //Initialisation du processus d'authentification
  void _authStarted(
    AuthStarted event,
    Emitter<AuthState> emit,
  ) async {
    final isSignedIn = await authRepository!.isLogged();
    final firstOpen = await sharedPreferencesHelper!.getIsFirstOpen();

    if (firstOpen) {
      return emit(AuthFirstOpen());
    } else {
      if (isSignedIn) {
        try {
          final userResult = await authRepository!.getuser();
          return emit(AuthSuccess(userResult.success!));
        } catch (e) {
          return emit(AuthServerError());
        }
      } else {
        return emit(AuthFailure());
      }
    }
  }

//Verifier si l'utilisateur est deja connecté
  void _authLoggedIn(
    AuthLoggedIn event,
    Emitter<AuthState> emit,
  ) async {
    final firstOpen = await sharedPreferencesHelper!.getIsFirstOpen();
    if (firstOpen) {
      return emit(AuthFirstOpen());
    } else {
      try {
        final userResult = await authRepository!.getuser();
        return emit(AuthSuccess(userResult.success!));
      } catch (e) {
        return emit(AuthServerError());
      }
    }
  }

// première connection de l'utilisateur
  void _authFirstOpen(
    AuthFirst event,
    Emitter<AuthState> emit,
  ) async {
    await sharedPreferencesHelper!.setIsFirstOpen(false);
    return emit(HomeStarted());
  }

// Deconnexion de l'utilisateur
  void _authLoggedOut(
    AuthLoggedOut event,
    Emitter<AuthState> emit,
  ) async {
    await authRepository!.logout();
    return emit(AuthFailure());
  }

// Redirection vers la LoginPage
  void _authLogin(
    AuthLogin event,
    Emitter<AuthState> emit,
  ) async {
    return emit(AuthLoginState());
  }
}
