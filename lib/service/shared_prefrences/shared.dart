import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveAuthStatus(bool auth) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setBool('auth', auth);
}

Future<bool> getAuthStatus() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getBool('auth') ?? false;
}
