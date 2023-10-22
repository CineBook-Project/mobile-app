// ignore_for_file: file_names, avoid_print

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  final String _isFirstOpen = "firstOpen";

  Future<bool> setIsFirstOpen(bool first) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool res = await prefs.setBool(_isFirstOpen, first);
    print('First Open $res');
    return res;
  }

  Future<bool> getIsFirstOpen() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool res = prefs.getBool(_isFirstOpen) ?? true;
    print('First Open $res');
    return res;
  }
}
