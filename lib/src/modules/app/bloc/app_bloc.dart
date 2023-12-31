import 'package:canal_olympia/src/modules/app/themes.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends HydratedBloc<AppEvent, AppState> {
  AppBloc()
      : super(AppState(AppThemes().themeData(), const Locale('fr', 'FR'))) {
    on<ChangeTheme>(_changeTheme);
    on<ChangeLanguage>(_changeLanguage);
  }

  void _changeTheme(
    ChangeTheme event,
    Emitter<AppState> emit,
  ) {
    emit(AppState(AppThemes().themeData(), state.locale));
  }

  void _changeLanguage(
    ChangeLanguage event,
    Emitter<AppState> emit,
  ) {
    emit(AppState(state.themeData, event.locale));
  }

  @override
  AppState? fromJson(Map<String, dynamic> json) {
    try {
      final ThemeData? theme;
      final Locale locale;

      theme = AppThemes().themeData();

      if (json['locale'] as bool) {
        locale = const Locale('fr', 'FR');
      } else {
        locale = const Locale('en', 'US');
      }

      return AppState(theme, locale);
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, bool>? toJson(AppState state) {
    return {
      'light': state.themeData == AppThemes().themeData(),
      'locale': state.locale == const Locale('fr', 'FR')
    };
  }
}
