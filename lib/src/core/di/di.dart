import 'package:canal_olympia/src/core/helpers/network.dart';
import 'package:canal_olympia/src/core/helpers/sharedpreferences.dart';
import 'package:canal_olympia/src/modules/app/bloc/app_bloc.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> init() async {
  //Utils
  getIt.registerLazySingleton<NetworkInfoHelper>(() => NetworkInfoHelper());
  getIt.registerLazySingleton<SharedPreferencesHelper>(
      () => SharedPreferencesHelper());

  //Bloc
  getIt.registerFactory<AppBloc>(() => AppBloc());
}
