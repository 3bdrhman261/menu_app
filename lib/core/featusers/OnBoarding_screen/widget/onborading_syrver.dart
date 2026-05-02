import 'package:shared_preferences/shared_preferences.dart';

class OnboradingSyrver {
  static late SharedPreferences sharedPreferences;

  static inshalizshanSharedPreferences() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static bool isFirstTime() {
    bool isFirstTime = sharedPreferences.getBool('isFirstTime') ?? true;
    return isFirstTime;
  }

  static setisfirstTime() {
    sharedPreferences.setBool('isFirstTime', false);
  }
}
