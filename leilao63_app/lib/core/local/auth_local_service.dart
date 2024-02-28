import 'package:shared_preferences/shared_preferences.dart';

const TOKEN_KEY = 'TOKEN_KEY';

class AuthLocalService {
  static Future<String?> getToken() async {
    final instance = await SharedPreferences.getInstance();
    final token = instance.getString(TOKEN_KEY);

    return token;
  }

  static Future<void> setToken(String token) async {
    final instance = await SharedPreferences.getInstance();
    instance.setString(TOKEN_KEY, token);
  }

  static Future<void> clearStorage() async {
    final instance = await SharedPreferences.getInstance();
    instance.clear();
  }
}
