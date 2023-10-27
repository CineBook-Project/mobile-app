import 'dart:async';

import 'package:canal_olympia/blocobserver.dart';
import 'package:canal_olympia/src/app.dart';
import 'package:canal_olympia/src/modules/auth/bloc/auth/auth_bloc.dart';
import 'package:firebase_performance/firebase_performance.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:canal_olympia/src/core/di/di.dart' as di;
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'firebase_options.dart';

void main() async {
  runZonedGuarded(() async {
    // Initialisation de tous les widgets
    WidgetsFlutterBinding.ensureInitialized();
    // Initialisation des dependences via getIt
    await di.init();

    // Initialisation de Firebase
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    // Initialisation de Firebase Performance
    FirebasePerformance.instance;

// Configuration de HydratedBloc pour la persistance de l'état
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await getTemporaryDirectory(),
    );

// Configuration de BlocObserver pour la gestion des logs de BLoC
    Bloc.observer = SimpleBlocObserver();

// Lancement de l'application
    runApp(BlocProvider(
        create: (_) => di.getIt<AuthBloc>()..add(AuthStarted()),
        child: const MyApp()));
  }, (error, stackTrace) {
    // Capturez toutes les erreurs qui se produisent dans la zone d'application et envoyez-les à Firebase Crashlytics.
    if (kDebugMode) {
      print('runZonedGuarded: Caught error in my root zone.');
      print(stackTrace);
      print(error);
    }
    FirebaseCrashlytics.instance.recordError(error, stackTrace);
  });
}
