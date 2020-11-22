import 'package:shared_preferences/shared_preferences.dart';

class Storage {
  Storage pref;
  static Storage _instance;
  factory Storage() {
    _instance ??= Storage._internalConstructor();
    return _instance;
  }
  Storage._internalConstructor();

  Future<SharedPreferences> _getSharedPreferences() async {
    return await SharedPreferences.getInstance();
  }
}
