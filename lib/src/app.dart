import 'package:canal_olympia/generated/l10n.dart';
import 'package:canal_olympia/src/lading.dart';
import 'package:canal_olympia/src/modules/app/bloc/app_bloc.dart';
import 'package:canal_olympia/src/modules/auth/bloc/auth/auth_bloc.dart';
import 'package:canal_olympia/src/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AppBloc(),
          ),
        ],
        child: BlocBuilder<AppBloc, AppState>(
          builder: (context, state) {
            return MaterialApp(
              title: "Canal Olympia",
              theme: state.themeData,
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
              locale: state.locale,
              supportedLocales: S.delegate.supportedLocales,
              debugShowCheckedModeBanner: false,
              home: BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  if (state is AuthInitial) {
                    return const SplashScreen();
                  }
                  if (state is AuthFirstOpen) {
                    return const LadingPage();
                  }
                  /*  if (state is AuthFailure) {
                    return BlocProvider<LoginBloc>(
                      create: (context) => getIt<LoginBloc>(),
                      child: LoginScreen(),
                    );
                  }
                  if (state is AuthSuccess) {
                    return BlocProvider<HomeBloc>(
                      create: (context) => getIt<HomeBloc>(),
                      child: HomePage(
                        imageProfil: state.imageProfil,
                      ),
                    );
                  }*/

                  if (state is HomeStarted) {
                    return Container();
                  }

                  return const SplashScreen();
                },
              ),
            );
          },
        ));
  }
}
