import 'dart:async';

import 'package:canal_olympia/src/app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:canal_olympia/src/core/di/di.dart' as di;

void main() async {
  runZonedGuarded(() async {
    // Initialisation de tous les widgets
    WidgetsFlutterBinding.ensureInitialized();
    // Initialisation des dependences via getIt
    await di.init();
    runApp(const MyApp());
  }, (error, stackTrace) {
    if (kDebugMode) {
      print('runZonedGuarded: Caught error in my root zone.');
      print(stackTrace);
      print(error);
    }
  });
}
