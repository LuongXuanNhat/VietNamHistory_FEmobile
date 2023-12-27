import 'package:shared_preferences/shared_preferences.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class UserPreferences {
  static const String _keyToken = 'user_token';
  static const String _keyEmail = 'user_email';
  static const String _keyRole = 'user_role';
  static const String _keyName = 'user_name';
  static const String _keyId = 'user_id';

  static Future<void> clear() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  static Future<void> saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyToken, token);
  }

  static Future<void> saveUserFromToken(
      {String? token, String? username}) async {
    final Map<String, dynamic> decodedToken = JwtDecoder.decode(token!);

    String email = decodedToken[
        'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress'];
    String role = decodedToken[
        'http://schemas.microsoft.com/ws/2008/06/identity/claims/role'];
    String name = username ??
        decodedToken[
            'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/surname'];
    String id = decodedToken[
        'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nameidentifier'];

    final prefs = await SharedPreferences.getInstance();
    String currentName = prefs.getString(_keyName) ?? '';
    await prefs.setString(_keyEmail, email);
    await prefs.setString(_keyRole, role);

    if (username != null && username != currentName) {
      await prefs.setString(_keyName, username);
    } else if (name != currentName) {
      await prefs.setString(_keyName, name);
    }

    await prefs.setString(_keyId, id);
  }

  static Future<Map<String, String>> getUser() async {
    final prefs = await SharedPreferences.getInstance();
    return {
      'email': prefs.getString(_keyEmail) ?? '',
      'role': prefs.getString(_keyRole) ?? '',
      'name': prefs.getString(_keyName) ?? '',
      'id': prefs.getString(_keyId) ?? '',
    };
  }
}
