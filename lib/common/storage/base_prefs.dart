import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class BasePrefs {
  SharedPreferences? prefs;

  Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  T getValueForkey<T>(String key) {
    return prefs?.get(key) as T;
  }

  Future<bool> setValueForkey(String key, dynamic value) {
    if (value is int) {
      return prefs!.setInt(key, value);
    }
    if (value is String) {
      return prefs!.setString(key, value);
    }
    if (value is List<String>) {
      return prefs!.setStringList(key, value);
    }

    if (value is bool) {
      return prefs!.setBool(key, value);
    }

    if (value is double) {
      return prefs!.setDouble(key, value);
    }

    final jsonValue = json.encode(value);
    return prefs!.setString(key, jsonValue);
  }

  Future<void> remove({required String key}) async {
    await prefs!.remove(key);
  }
}
