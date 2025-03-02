import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  SharedPreferencesHelper._();

  static removeData(String Key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.remove(Key);
  }

  static clearAllData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.clear();
  }

  static setData(String Key, value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    switch (value.runtimeType) {
      case int:
        await prefs.setInt(Key, value);
        break;
      case String:
        await prefs.setString(Key, value);
        break;
      case double:
        await prefs.setDouble(Key, value);
        break;
      case bool:
        await prefs.setBool(Key, value);
        break;
      default:
    }
  }

  /// Gets a bool value from SharedPreferences with given [key].
  static getBool(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(key) ?? false;
  }

  /// Gets a double value from SharedPreferences with given [key].
  static getDouble(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getDouble(key) ?? 0.0;
  }

  /// Gets an int value from SharedPreferences with given [key].
  static getInt(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getInt(key) ?? 0;
  }

  /// Gets an String value from SharedPreferences with given [key].
  static getString(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(key) ?? '';
  }

  static setSecuredString(String key, String value) async {
    const flutterSecureStorage = FlutterSecureStorage();
    await flutterSecureStorage.write(key: key, value: value);
  }
    static getSecuredString(String key) async {
    const flutterSecureStorage = FlutterSecureStorage();
    await flutterSecureStorage.read(key: key)??"";
  }
    static clearAllSecuredData() async {
    const flutterSecureStorage = FlutterSecureStorage();

    await flutterSecureStorage.deleteAll();
  }
}
