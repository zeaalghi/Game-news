import 'package:shared_preferences/shared_preferences.dart';


class SharedPreferencesService {
  static late SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static void saveData(String key, String value) {
    _prefs.setString(key, value);
  }

  static String? getData(String key) {
    return _prefs.getString(key);
  }
}
