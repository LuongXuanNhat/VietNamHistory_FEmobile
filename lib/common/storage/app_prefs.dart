import '../../models/user/response/login_response.dart';

import '../../models/user/response/user_response.dart';

import '../../models/user/user_pres.dart';
import 'base_prefs.dart';
import 'global_constants.dart';

class AppPref extends BasePrefs {
  ///MARK - Initials;
  static Future<AppPref> instance() async {
    final appPref = AppPref();
    await appPref.init();
    return appPref;
  }

  ///Save token
  Future<void> saveToken({required String tokenJson}) async {
    await setValueForkey(GlobalConstants.kToken, tokenJson);
  }

  /// get token
  Future<LoginResponse?>? getToken() async {
    final tokenJson = getValueForkey<String?>(GlobalConstants.kToken);
    if (tokenJson?.isEmpty ?? true) {
      return Future.value(null);
    }
    final tokenResponse = LoginResponse.fromRawJson(tokenJson ?? '');
    return Future.value(tokenResponse);
  }

  Future<void> saveLoginInput(
      {required String username, required String password}) async {
    await setValueForkey(GlobalConstants.USERNAME, username);
    await setValueForkey(GlobalConstants.PASSWORD, password);
  }

  Future<String> getUsernameInput() async {
    return await getValueForkey(GlobalConstants.USERNAME) ?? '';
  }

  Future<String> getPasswordInput() async {
    return await getValueForkey(GlobalConstants.PASSWORD) ?? '';
  }

  ///Save User
  Future<void> saveUser({required String userJson}) async {
    await setValueForkey(GlobalConstants.kUser, userJson);
  }

  // Get User
  Future<UserResponse?>? getUser() async {
    final userJson = getValueForkey<String?>(GlobalConstants.kUser);
    if (userJson?.isEmpty ?? true) {
      return Future.value(null);
    }
    final userResponse = UserResponse.fromRawJson(userJson ?? '');
    return Future.value(userResponse);
  }

  // Save User
  Future<void> saveSkipOnBoard({required bool isSkip}) async {
    await setValueForkey(GlobalConstants.kSkipOnboard, isSkip);
  }

  // Get User
  Future<bool> isSkipOnboard() async {
    final isSkip = getValueForkey<bool?>(GlobalConstants.kSkipOnboard) ?? false;

    return isSkip;
  }

  //Has Logged In
  Future<bool> hasLoggedIn() async {
    final userResponse = await getUser();
    return userResponse != null;
  }

  //Chaned Account
  Future<void> changedAccount() async {
    await remove(key: GlobalConstants.kUser);
  }

  //Logout
  Future<void> logout() async {
    await remove(key: GlobalConstants.kToken);
    await remove(key: GlobalConstants.kUser);
    Map<String, String> userData = await UserPreferences.getUser();
    userData.clear();
  }
}
