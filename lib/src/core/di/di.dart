import 'package:canal_olympia/src/core/helpers/network.dart';
import 'package:canal_olympia/src/core/helpers/sharedpreferences.dart';
import 'package:canal_olympia/src/core/services/firebase/authServices.dart';
import 'package:canal_olympia/src/modules/app/bloc/app_bloc.dart';
import 'package:canal_olympia/src/modules/auth/bloc/auth/auth_bloc.dart';
import 'package:canal_olympia/src/modules/auth/bloc/login/login_bloc.dart';
import 'package:canal_olympia/src/modules/auth/repositories/authRepository.dart';
import 'package:canal_olympia/src/modules/auth/repositories/authRepositoryImpl.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> init() async {
  // Services
  getIt.registerLazySingleton<AuthServices>(() => AuthServices());

  //Utils
  getIt.registerLazySingleton<NetworkInfoHelper>(() => NetworkInfoHelper());
  getIt.registerLazySingleton<SharedPreferencesHelper>(
      () => SharedPreferencesHelper());

  //Repositories
  getIt.registerFactory<AuthRepository>(
    () => AuthRepositoryImpl(
      authService: getIt(),
      networkInfoHelper: getIt(),
      sharedPreferencesHelper: getIt(),
    ),
  );

  //Bloc
  getIt.registerFactory<AppBloc>(() => AppBloc());
  getIt.registerFactory<AuthBloc>(() =>
      AuthBloc(authRepository: getIt(), sharedPreferencesHelper: getIt()));
  getIt.registerFactory<LoginBloc>(() => LoginBloc(authRepository: getIt()));
}
